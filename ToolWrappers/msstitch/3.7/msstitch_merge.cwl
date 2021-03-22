class: CommandLineTool
id: msstitch_merge.cwl
inputs:
- id: in_directory_to_output
  doc: Directory to output in
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_set_names
  doc: "Names of biological sets. Can be specified with\nquotation marks if spaces\
    \ are used"
  type: string[]
  inputBinding:
    prefix: --setnames
- id: in_is_ob_quant_col_pattern
  doc: "Unique text pattern to identify isobaric quant columns\nin input table."
  type: string?
  inputBinding:
    prefix: --isobquantcolpattern
- id: in_ms_one_quant_col_pattern
  doc: "Unique text pattern to identify precursor quant column\nin input table."
  type: long?
  inputBinding:
    prefix: --ms1quantcolpattern
- id: in_fdr_col_pattern
  doc: "Unique text pattern to identify FDR column in input\ntable."
  type: string?
  inputBinding:
    prefix: --fdrcolpattern
- id: in_flr_col_pattern
  doc: "Unique text pattern to identify FLR (peptide PTM false\nlocalization rate)\
    \ column in input table."
  type: string?
  inputBinding:
    prefix: --flrcolpattern
- id: in_multiple_input_files
  doc: Multiple input files of {} format
  type: string[]
  inputBinding:
    prefix: -i
- id: in_feat_col
  doc: "Column number in table in which desired accessions\nare. stored. First column\
    \ number is 1. Use in case of\nnot using default column 1"
  type: long?
  inputBinding:
    prefix: --featcol
- id: in_dbfile
  doc: Database lookup file
  type: File?
  inputBinding:
    prefix: --dbfile
- id: in_merge_cut_off
  doc: "FDR cutoff when building merged protein table, to use\nwhen a cutoff has been\
    \ used before storing the table\nto lookup. FDR values need to be stored in the\
    \ lookup"
  type: string?
  inputBinding:
    prefix: --mergecutoff
- id: in_no_group_annotation
  doc: "For peptide table merging. Do not include protein\ngroup or gene data in output,\
    \ just use accessions."
  type: boolean?
  inputBinding:
    prefix: --no-group-annotation
- id: in_gene_centric
  doc: "For peptide table merging. Do not include protein\ngroup data in output, but\
    \ use gene names instead to\ncount peptides per feature, determine peptide-\n\
    uniqueness.\n"
  type: boolean?
  inputBinding:
    prefix: --genecentric
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output
  doc: Directory to output in
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_to_output)
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msstitch:3.7--py_0
cwlVersion: v1.1
baseCommand:
- msstitch
- merge
