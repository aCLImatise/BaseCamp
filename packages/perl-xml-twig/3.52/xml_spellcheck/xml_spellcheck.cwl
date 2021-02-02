class: CommandLineTool
id: xml_spellcheck.cwl
inputs:
- id: in_conf
  doc: Gets the options from a configuration file. NOT IMPLEMENTED YET.
  type: File
  inputBinding:
    prefix: --conf
- id: in_spell_checker
  doc: "The command to use for spell checking, including any option\nBy default \"\
    aspell -c\" is used"
  type: string
  inputBinding:
    prefix: --spellchecker
- id: in_backup_extension
  doc: "By default the original file is saved with a \".bak\" extension. This\noption\
    \ changes the extension"
  type: File
  inputBinding:
    prefix: --backup-extension
- id: in_attributes
  doc: "Spell check attribute content. By default attribute values are NOT\nspell\
    \ checked. NOT YET IMPLEMENTED"
  type: boolean
  inputBinding:
    prefix: --attributes
- id: in_exclude_elements
  doc: A list of elements that should not be spell checked
  type: string
  inputBinding:
    prefix: --exclude_elements
- id: in_include_elements
  doc: "A list of elements that should be spell checked (by default all\nelements\
    \ are spell checked).\n\"--exclude_elements\" and \"--include_elements\" are mutually\
    \ exclusive"
  type: string
  inputBinding:
    prefix: --include_elements
- id: in_pretty_print
  doc: "A pretty print style for the document, as defined in XML::Twig. If\nthe option\
    \ is provided without a value then the \"indented\" style is\nused"
  type: string
  inputBinding:
    prefix: --pretty_print
- id: in_man
  doc: "Display longer help message and exit\n"
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- xml_spellcheck
