version 1.0

task XmlSpellcheck {
  input {
    File? conf
    String? spell_checker
    File? backup_extension
    Boolean? attributes
    String? exclude_elements
    String? include_elements
    String? pretty_print
    Boolean? man
  }
  command <<<
    xml_spellcheck \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(spell_checker) then ("--spellchecker " +  '"' + spell_checker + '"') else ""} \
      ~{if defined(backup_extension) then ("--backup-extension " +  '"' + backup_extension + '"') else ""} \
      ~{if (attributes) then "--attributes" else ""} \
      ~{if defined(exclude_elements) then ("--exclude_elements " +  '"' + exclude_elements + '"') else ""} \
      ~{if defined(include_elements) then ("--include_elements " +  '"' + include_elements + '"') else ""} \
      ~{if defined(pretty_print) then ("--pretty_print " +  '"' + pretty_print + '"') else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    conf: "Gets the options from a configuration file. NOT IMPLEMENTED YET."
    spell_checker: "The command to use for spell checking, including any option\\nBy default \\\"aspell -c\\\" is used"
    backup_extension: "By default the original file is saved with a \\\".bak\\\" extension. This\\noption changes the extension"
    attributes: "Spell check attribute content. By default attribute values are NOT\\nspell checked. NOT YET IMPLEMENTED"
    exclude_elements: "A list of elements that should not be spell checked"
    include_elements: "A list of elements that should be spell checked (by default all\\nelements are spell checked).\\n\\\"--exclude_elements\\\" and \\\"--include_elements\\\" are mutually exclusive"
    pretty_print: "A pretty print style for the document, as defined in XML::Twig. If\\nthe option is provided without a value then the \\\"indented\\\" style is\\nused"
    man: "Display longer help message and exit\\n"
  }
  output {
    File out_stdout = stdout()
  }
}