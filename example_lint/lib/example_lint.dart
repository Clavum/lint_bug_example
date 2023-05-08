import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:example_lint/rules/example_rule.dart';

PluginBase createPlugin() => _ExampleLinter();

class _ExampleLinter extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
    const DoubleSlashUri(),
  ];
}
