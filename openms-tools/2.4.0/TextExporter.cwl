class: CommandLineTool
id: TextExporter.cwl
inputs:
- id: in
  doc: "*                              Input file  (valid formats: 'featureXML', 'consensusXML',\
    \ 'idXML', 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file (mandatory for featureXML and idXML) (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -out
- id: separator
  doc: The used separator character(s); if not set the 'tab' character is used
  type: string
  inputBinding:
    prefix: -separator
- id: replacement
  doc: "Used to replace occurrences of the separator in strings before writing, if\
    \ 'quoting' is 'none' (default: '_')"
  type: string
  inputBinding:
    prefix: -replacement
- id: quoting
  doc: "Method for quoting of strings: 'none' for no quoting, 'double' for quoting\
    \ with doubling of embedded quotes, 'escape' for quoting with backslash-escaping\
    \ of embedded quotes (default: 'none' valid: 'none', 'double', 'escape')"
  type: string
  inputBinding:
    prefix: -quoting
- id: no_ids
  doc: Suppresses output of identification data.
  type: boolean
  inputBinding:
    prefix: -no_ids
- id: feature
  doc: ':minimal                         Set this flag to write only three attributes:
    RT, m/z, and intensity.'
  type: boolean
  inputBinding:
    prefix: -feature
- id: feature
  doc: ":add_metavalues <min_frequency>  Add columns for meta values which occur with\
    \ a certain frequency (0-100%). Set to -1 to omit meta values (default). (default:\
    \ '-1' min: '-1' max: '100')"
  type: boolean
  inputBinding:
    prefix: -feature
- id: id
  doc: :proteins_only                        Set this flag if you want only protein
    information from an idXML file
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: :peptides_only                        Set this flag if you want only peptide
    information from an idXML file
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: :first_dim_rt                         If this flag is set the first_dim RT
    of the peptide hits will also be printed (if present).
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: ":add_metavalues <min_frequency>       Add columns for meta values which occur\
    \ with a certain frequency (0-100%). Set to -1 to omit meta values (default).\
    \ (default: '-1' min: '-1' max: '100')"
  type: boolean
  inputBinding:
    prefix: -id
- id: id
  doc: ":add_hit_metavalues <min_frequency>   Add columns for meta values which occur\
    \ with a certain frequency (0-100%). Set to -1 to omit meta values (default).\
    \ (default: '-1' min: '-1' max: '100')"
  type: boolean
  inputBinding:
    prefix: -id
- id: consensus
  doc: ":centroids <file>              Output file for centroids of consensus features\
    \ (valid formats: 'csv')"
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: ":elements <file>               Output file for elements of consensus features\
    \ (valid formats: 'csv')"
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: ":features <file>               Output file for consensus features and contained\
    \ elements from all maps (writes 'nan's if elements are missing) (valid formats:\
    \ 'csv')"
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: ":sorting_method <method>       Sorting options can be combined. The precedence\
    \ is: sort_by_size, sort_by_maps, sorting_method (default: 'none' valid: 'none',\
    \ 'RT', 'MZ', 'RT_then_MZ', 'intensity',  'quality_decreasing', 'quality_increasing')"
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: :sort_by_maps                  Apply a stable sort by the covered maps, lexicographically
  type: boolean
  inputBinding:
    prefix: -consensus
- id: consensus
  doc: :sort_by_size                  Apply a stable sort by decreasing size (i.e.,
    the number of elements)
  type: boolean
  inputBinding:
    prefix: -consensus
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- TextExporter
