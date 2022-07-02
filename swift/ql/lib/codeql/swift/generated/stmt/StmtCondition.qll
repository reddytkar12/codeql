// generated by codegen/codegen.py
import codeql.swift.elements.AstNode
import codeql.swift.elements.stmt.ConditionElement

class StmtConditionBase extends @stmt_condition, AstNode {
  override string getAPrimaryQlClass() { result = "StmtCondition" }

  ConditionElement getElement(int index) {
    exists(ConditionElement x |
      stmt_condition_elements(this, index, x) and
      result = x.resolve()
    )
  }

  ConditionElement getAnElement() { result = getElement(_) }

  int getNumberOfElements() { result = count(getAnElement()) }
}