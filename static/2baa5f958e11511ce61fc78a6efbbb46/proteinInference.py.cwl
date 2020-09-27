class: CommandLineTool
id: proteinInference.py.cwl
inputs:
- id: in_threads_to_run
  doc: Threads to run
  type: string
  inputBinding:
    prefix: -p
- id: in_fasta_file_match
  doc: "[FASTA], --fasta [FASTA]\nThe fasta file to match peptides against."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_name_file_wish
  doc: "[OUT], --out [OUT]\nThe name of the file you wish to create with results\n\
    appended."
  type: File
  inputBinding:
    prefix: -o
- id: in_peptide_out
  doc: "[PEPTIDE_OUT]\nThe file to write digested products to."
  type: boolean
  inputBinding:
    prefix: --peptide-out
- id: in_protein_out
  doc: "[PROTEIN_OUT]\nThe file to write grouped products to."
  type: boolean
  inputBinding:
    prefix: --protein-out
- id: in_strict
  doc: "For numeric operations, fail if types are incorrect\n(converting NA to a float\
    \ for instance)."
  type: boolean
  inputBinding:
    prefix: --strict
- id: in_tsv
  doc: The delimited file.
  type: File
  inputBinding:
    prefix: --tsv
- id: in_delimiter
  doc: The delimiter for fields.
  type: string
  inputBinding:
    prefix: --delimiter
- id: in_peptide_col
  doc: "The column of interest (default: 1). Can be a column\nname."
  type: long
  inputBinding:
    prefix: --peptide-col
- id: in_header
  doc: 'The number of headers lines (default: 1).'
  type: long
  inputBinding:
    prefix: --header
- id: in_regex
  doc: "A perl regular expression determining which parts of\nthe header to capture."
  type: string
  inputBinding:
    prefix: --regex
- id: in_inferred_name
  doc: "The name you want to assign for protein inference (in\ncase you are regexing\
    \ for gene names or something)."
  type: string
  inputBinding:
    prefix: --inferred-name
- id: in_no_inference
  doc: Do not append proteins inferred from sequences.
  type: boolean
  inputBinding:
    prefix: --no-inference
- id: in_no_equality
  doc: "Do not consider Leucine and Isoleucine equal for\npeptide mapping."
  type: boolean
  inputBinding:
    prefix: --no-equality
- id: in_enzyme
  doc: "[{trypsin,lysc,none,argc,gluc,aspn,V8} ...]\nThe enzyme used to digest the\
    \ sample."
  type: string
  inputBinding:
    prefix: --enzyme
- id: in_enzyme_pattern
  doc: "A regex cleavage pattern such as [KR]|{P} to cleave\nproteins with."
  type: string
  inputBinding:
    prefix: --enzyme-pattern
- id: in_min
  doc: Minimum cleavage length
  type: long
  inputBinding:
    prefix: --min
- id: in_max
  doc: Maximum cleavage length
  type: long
  inputBinding:
    prefix: --max
- id: in_i_baq
  doc: "Provide to append iBAQ values as well (requires\nprotein inference)."
  type: boolean
  inputBinding:
    prefix: --ibaq
- id: in_precursors
  doc: "The column with precursor area (defaults to header\nlines containing 'Precursor')."
  type: string
  inputBinding:
    prefix: --precursors
- id: in_i_baq_function
  doc: "The function to apply to groups of iBAQ values (for\nmultiple peptide matches).\
    \ Options: concat, mean,\nmedian, var, std, sum, count"
  type: string
  inputBinding:
    prefix: --ibaq-function
- id: in_non_redundant
  doc: "Use only non-redundant theoretical tryptic peptides\nfor the iBAQ denominator."
  type: boolean
  inputBinding:
    prefix: --non-redundant
- id: in_normalize
  doc: "Normalize iBAQ to total intensity of column (useful\nfor comparing multiple\
    \ samples)."
  type: boolean
  inputBinding:
    prefix: --normalize
- id: in_unique_only
  doc: Only group proteins with unique peptides
  type: boolean
  inputBinding:
    prefix: --unique-only
- id: in_position
  doc: Write the position of the peptide matches.
  type: boolean
  inputBinding:
    prefix: --position
- id: in_case_sensitive
  doc: "Treat peptides as case-sensitive (ie separate modified\npeptides)"
  type: boolean
  inputBinding:
    prefix: --case-sensitive
- id: in_mod_out
  doc: '[MOD_OUT]   The file to write a modification-centric summary to.'
  type: boolean
  inputBinding:
    prefix: --mod-out
- id: in_modification_site
  doc: "Write the position in the parent protein of the\nmodification (requires case-sensitive\
    \ and\nmodifications being lower-cased)."
  type: boolean
  inputBinding:
    prefix: --modification-site
- id: in_mod_col
  doc: The column containing modification information.
  type: string
  inputBinding:
    prefix: --mod-col
- id: in_mod_col_func
  doc: "The function to apply. Options: concat, mean, median,\nvar, std, sum, count\n"
  type: string
  inputBinding:
    prefix: --mod-col-func
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_file_wish
  doc: "[OUT], --out [OUT]\nThe name of the file you wish to create with results\n\
    appended."
  type: File
  outputBinding:
    glob: $(inputs.in_name_file_wish)
cwlVersion: v1.1
baseCommand:
- proteinInference.py
