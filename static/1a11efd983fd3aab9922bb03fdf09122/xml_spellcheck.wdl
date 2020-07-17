version 1.0

task XmlSpellcheck {
  input {
    String? conf
    String? spell_checker
    String? backup_extension
    Boolean? attributes
    String? exclude_elements
    String? include_elements
    String? pretty_print
    Boolean? man
    File files
  }
  command <<<
    xml_spellcheck \
      ~{files} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(spell_checker) then ("--spellchecker " +  '"' + spell_checker + '"') else ""} \
      ~{if defined(backup_extension) then ("--backup-extension " +  '"' + backup_extension + '"') else ""} \
      ~{true="--attributes" false="" attributes} \
      ~{if defined(exclude_elements) then ("--exclude_elements " +  '"' + exclude_elements + '"') else ""} \
      ~{if defined(include_elements) then ("--include_elements " +  '"' + include_elements + '"') else ""} \
      ~{if defined(pretty_print) then ("--pretty_print " +  '"' + pretty_print + '"') else ""} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    conf: "Gets the options from a configuration file. NOT IMPLEMENTED YET."
    spell_checker: "The command to use for spell checking, including any option By default \"aspell -c\" is used"
    backup_extension: "By default the original file is saved with a \".bak\" extension. This option changes the extension"
    attributes: "Spell check attribute content. By default attribute values are NOT spell checked. NOT YET IMPLEMENTED"
    exclude_elements: "A list of elements that should not be spell checked"
    include_elements: "A list of elements that should be spell checked (by default all elements are spell checked). \"--exclude_elements\" and \"--include_elements\" are mutually exclusive"
    pretty_print: "A pretty print style for the document, as defined in XML::Twig. If the option is provided without a value then the \"indented\" style is used"
    man: "Display longer help message and exit"
    files: ""
  }
}