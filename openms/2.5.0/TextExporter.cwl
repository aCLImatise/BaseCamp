#!/usr/bin/env cwl-runner

baseCommand:
- TextExporter
class: CommandLineTool
cwlVersion: v1.0
id: textexporter
inputs:
- doc: "*                                     Input file  (valid formats: 'featureXML',\
    \ 'consensusXML', 'idXML', 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output file (mandatory for featureXML and idXML) (valid formats: 'csv')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: The used separator character(s); if not set the 'tab' character is used
  id: separator
  inputBinding:
    prefix: -separator
  type: string
- doc: "Used to replace occurrences of the separator in strings before writing, if\
    \ 'quoting' is 'none' (default: '_')"
  id: replacement
  inputBinding:
    prefix: -replacement
  type: string
- doc: "Method for quoting of strings: 'none' for no quoting, 'double' for quoting\
    \ with doubling of embedded quotes, 'escape' for quoting with backslash-escaping\
    \ of embedded quotes (default: 'none' valid: 'none', 'double', 'escape')"
  id: quoting
  inputBinding:
    prefix: -quoting
  type: string
- doc: Suppresses output of identification data.
  id: no_ids
  inputBinding:
    prefix: -no_ids
  type: boolean
- doc: ':minimal                                Set this flag to write only three
    attributes: RT, m/z, and intensity.'
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: ":add_metavalues <min_frequency>         Add columns for meta values which\
    \ occur with a certain frequency (0-100%). Set to -1 to omit meta values (default).\
    \ (default: '-1' min: '-1' max: '100')"
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: :proteins_only                               Set this flag if you want only
    protein information from an idXML file
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: :peptides_only                               Set this flag if you want only
    peptide information from an idXML file
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: :protein_groups                              Set this flag if you want to also
    write indist. group information from an idXML file
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: :first_dim_rt                                If this flag is set the first_dim
    RT of the peptide hits will also be printed (if present).
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: ":add_metavalues <min_frequency>              Add columns for meta values of\
    \ PeptideID (=spectrum) entries which occur with a certain frequency (0-100%).\
    \ Set to -1 to omit meta values (default). (default:  '-1' min: '-1' max: '100')"
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: ":add_hit_metavalues <min_frequency>          Add columns for meta values of\
    \ PeptideHit (=PSM) entries which occur with a certain frequency (0-100%). Set\
    \ to -1 to omit meta values (default). (default: '-1'  min: '-1' max: '100')"
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: ":add_protein_hit_metavalues <min_frequency>  Add columns for meta values on\
    \ protein level which occur with a certain frequency (0-100%). Set to -1 to omit\
    \ meta values (default). (default: '-1' min: '-1'  max: '100')"
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: ":centroids <file>                     Output file for centroids of consensus\
    \ features (valid formats: 'csv')"
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: ":elements <file>                      Output file for elements of consensus\
    \ features (valid formats: 'csv')"
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: ":features <file>                      Output file for consensus features and\
    \ contained elements from all maps (writes 'nan's if elements are missing) (valid\
    \ formats: 'csv')"
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: ":sorting_method <method>              Sorting options can be combined. The\
    \ precedence is: sort_by_size, sort_by_maps, sorting_method (default: 'none' valid:\
    \ 'none', 'RT', 'MZ', 'RT_then_MZ', 'intens ity', 'quality_decreasing', 'quality_increasing')"
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: :sort_by_maps                         Apply a stable sort by the covered maps,
    lexicographically
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: :sort_by_size                         Apply a stable sort by decreasing size
    (i.e., the number of elements)
  id: consensus
  inputBinding:
    prefix: -consensus
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
