import path from 'path';
import Handlebars from "handlebars";
import { writeFileSync, readFileSync } from "fs";

export function compileTemplate(templatePath: string, data: any, outputPath: string) {
    const tpl = readFileSync(templatePath, { encoding: "utf8" });
    const template = Handlebars.compile(tpl);
    const output = template(data);
    writeFileSync(outputPath, output, { encoding: "utf8" });
}