import { HvigorNode, HvigorPlugin } from '@ohos/hvigor';

export function customPlugin(): HvigorPlugin {
    return {
        pluginId: 'customPlugin',
        apply(node: HvigorNode) {
            console.log(`node: ${node.getNodeName()}, path: ${node.getNodePath()}`);
            console.log('hello customPlugin!');
        }
    }
}