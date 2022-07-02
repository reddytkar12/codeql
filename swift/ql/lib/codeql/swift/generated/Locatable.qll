// generated by codegen/codegen.py
import codeql.swift.elements.Element
import codeql.swift.elements.Location

class LocatableBase extends @locatable, Element {
  Location getLocation() {
    exists(Location x |
      locatable_locations(this, x) and
      result = x.resolve()
    )
  }

  predicate hasLocation() { exists(getLocation()) }
}