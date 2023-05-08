import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

class DoubleSlashUri extends DartLintRule {
  const DoubleSlashUri() : super(code: _code);

  static const _code = LintCode(
    name: 'double_slash_imports',
    problemMessage: 'Avoid double slashes in imports.',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addUriBasedDirective((node) {
      if (node.uri.stringValue == null) {
        return;
      }
      if (node.uri.stringValue!.contains('//')) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
