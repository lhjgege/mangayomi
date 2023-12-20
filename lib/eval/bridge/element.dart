import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:html/dom.dart';
import 'package:mangayomi/eval/model/element.dart';

class $MElement implements MElement, $Instance {
  $MElement.wrap(this.$value) : _superclass = $Object($value);
  static const $type = BridgeTypeRef(
      BridgeTypeSpec('package:mangayomi/bridge_lib.dart', 'MElement'));

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($type), params: [
            BridgeParameter('element',
                BridgeTypeAnnotation($Element.$type, nullable: true), false),
          ]),
        )
      },
      fields: {
        'element': BridgeFieldDef(BridgeTypeAnnotation($Element.$type)),
      },
      getters: {
        'outerHTML': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
        )),
        'innerHtml': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
        )),
        'text': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
        )),
        'className': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
        )),
        'localName': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
        )),
        'namespaceUri': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
        )),
        'getSrc': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
        )),
        'getImg': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
        )),
        'getHref': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
        )),
        'getDataSrc': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
        )),
        'children': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list, [$type]),
              nullable: true),
        )),
        'parent': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type, nullable: true),
        )),
        'nextElementSibling': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type, nullable: true),
        )),
        'previousElementSibling': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type, nullable: true),
        )),
      },
      methods: {
        'attr': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [
                BridgeParameter(
                    'attr',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                        nullable: true),
                    false)
              ]),
        ),
        'text': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                  nullable: true)),
        ),
        'select': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(
                  BridgeTypeRef(CoreTypes.list, [$type]),
                  nullable: true),
              params: [
                BridgeParameter(
                    'selector',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false)
              ]),
        ),
        'selectFirst': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation($type, nullable: true),
              params: [
                BridgeParameter(
                    'selector',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false)
              ]),
        ),
      },
      wrap: true);

  @override
  get $reified => $value;

  @override
  final MElement $value;

  final $Instance _superclass;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'outerHTML':
        final res = $value.outerHTML;
        return res == null ? const $null() : $String(res);
      case 'innerHtml':
        final res = $value.innerHtml;
        return res == null ? const $null() : $String(res);
      case 'text':
        final res = $value.text;
        return res == null ? const $null() : $String(res.trim().trimLeft().trimRight());
      case 'className':
        final res = $value.className;
        return res == null ? const $null() : $String(res.trim().trimLeft().trimRight());
      case 'localName':
        final res = $value.localName;
        return res == null ? const $null() : $String(res.trim().trimLeft().trimRight());
      case 'namespaceUri':
        final res = $value.namespaceUri;
        return res == null ? const $null() : $String(res.trim().trimLeft().trimRight());
      case 'getSrc':
        final res = $value.getSrc;
        return res == null ? const $null() : $String(res.trim().trimLeft().trimRight());
      case 'getImg':
        final res = $value.getImg;
        return res == null ? const $null() : $String(res.trim().trimLeft().trimRight());
      case 'getHref':
        final res = $value.getHref;
        return res == null ? const $null() : $String(res.trim().trimLeft().trimRight());
      case 'getDataSrc':
        final res = $value.getDataSrc;
        return res == null ? const $null() : $String(res.trim().trimLeft().trimRight());
      case 'parent':
        final res = $value.parent;
        return res == null ? const $null() : $MElement.wrap(res);
      case 'nextElementSibling':
        final res = $value.nextElementSibling;
        return res == null ? const $null() : $MElement.wrap(res);
      case 'previousElementSibling':
        final res = $value.previousElementSibling;
        return res == null ? const $null() : $MElement.wrap(res);
      case 'attr':
        return __attr;
      case 'select':
        return __select;
      case 'selectFirst':
        return __selectFirst;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}

  static $Value? $new(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    return $MElement.wrap(MElement(args[0]?.$value));
  }

  static const $Function __attr = $Function(_attr);
  static $Value? _attr(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    final res = (target!.$value as MElement).attr(args[0]?.$value ?? "");
    return res == null ? const $null() : $String(res);
  }

  static const $Function __select = $Function(_select);
  static $Value? _select(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    final res = (target!.$value as MElement).select(args[0]?.$value);
    return res == null
        ? const $null()
        : $List.wrap(res.map((e) => $MElement.wrap(e)).toList());
  }

  static const $Function __selectFirst = $Function(_selectFirst);
  static $Value? _selectFirst(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    final res = (target!.$value as MElement).selectFirst(args[0]?.$value);
    return res == null ? const $null() : $MElement.wrap(res);
  }

  @override
  String? attr(String attr) => $value.attr(attr);

  @override
  List<MElement>? select(String selector) => $value.select(selector);

  @override
  MElement? selectFirst(String selector) => $value.selectFirst(selector);

  @override
  List<MElement>? get children => $value.children;

  @override
  String? get className => $value.className;

  @override
  String? get getDataSrc => $value.getDataSrc;

  @override
  String? get getHref => $value.getHref;

  @override
  String? get getImg => $value.getImg;

  @override
  String? get getSrc => $value.getSrc;

  @override
  String? get innerHtml => $value.innerHtml;

  @override
  String? get localName => $value.localName;

  @override
  String? get namespaceUri => $value.namespaceUri;

  @override
  MElement? get nextElementSibling => $value.nextElementSibling;

  @override
  String? get outerHTML => $value.outerHTML;

  @override
  MElement? get parent => $value.parent;

  @override
  MElement? get previousElementSibling => $value.previousElementSibling;

  @override
  String? get text => $value.text;
}

class $Element implements $Instance {
  $Element.wrap(this.$value) : _superclass = $Object($value);

  static const $type = BridgeTypeRef(
      BridgeTypeSpec('package:mangayomi/bridge_lib.dart', 'Element'));

  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type, nullable: true)))
    },
    wrap: true,
  );

  @override
  get $reified => $value;

  @override
  final Element $value;

  final $Instance _superclass;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}
}
