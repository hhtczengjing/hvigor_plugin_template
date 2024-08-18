// 以下是自动生成的代码，请勿修改
{{#each pluginList}}
import { {{identifier}} } from './{{file}}';
{{/each}}

export default function execute(callbackId: string, service: string, action: string, params: object[]) {
    switch (service) {
        {{#each pluginList}}
        case '{{service}}':
            execute{{service}}Service(callbackId, service, action, params);
            break;
        {{/each}}
        default:
            throw new Error(`未知service: ${service}`);
    }
}

{{#each pluginList}}
// {{file}} / {{identifier}} / {{service}}
function execute{{service}}Service(callbackId: string, service: string, action: string, params: object[]) {
    const plugin = new {{identifier}}(controller);
    switch (action) {
        {{#each actions}}
        case '{{action}}':
            plugin.{{identifier}}(callbackId, service, action, params);
            break;
        {{/each}}
        default:
            throw new Error(`${service}未知action: ${action}`);
    }
}

{{/each}}