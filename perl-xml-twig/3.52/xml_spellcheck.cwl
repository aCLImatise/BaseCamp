class: CommandLineTool
id: xml_spellcheck.cwl
inputs:
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: conf
  doc: Gets the options from a configuration file. NOT IMPLEMENTED YET.
  type: string
  inputBinding:
    prefix: --conf
- id: spell_checker
  doc: The command to use for spell checking, including any option By default "aspell
    -c" is used
  type: string
  inputBinding:
    prefix: --spellchecker
- id: backup_extension
  doc: By default the original file is saved with a ".bak" extension. This option
    changes the extension
  type: string
  inputBinding:
    prefix: --backup-extension
- id: attributes
  doc: Spell check attribute content. By default attribute values are NOT spell checked.
    NOT YET IMPLEMENTED
  type: boolean
  inputBinding:
    prefix: --attributes
- id: exclude_elements
  doc: A list of elements that should not be spell checked
  type: string
  inputBinding:
    prefix: --exclude_elements
- id: include_elements
  doc: A list of elements that should be spell checked (by default all elements are
    spell checked). "--exclude_elements" and "--include_elements" are mutually exclusive
  type: string
  inputBinding:
    prefix: --include_elements
- id: pretty_print
  doc: A pretty print style for the document, as defined in XML::Twig. If the option
    is provided without a value then the "indented" style is used
  type: string
  inputBinding:
    prefix: --pretty_print
- id: man
  doc: Display longer help message and exit
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- xml_spellcheck
