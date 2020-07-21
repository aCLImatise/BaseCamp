class: CommandLineTool
id: ../../../msstitch_merge.cwl
inputs:
- id: directory_to_output
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: output_file
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: set_names
  doc: Names of biological sets. Can be specified with quotation marks if spaces are
    used
  type: string[]
  inputBinding:
    prefix: --setnames
- id: is_ob_quant_col_pattern
  doc: Unique text pattern to identify isobaric quant columns in input table.
  type: string
  inputBinding:
    prefix: --isobquantcolpattern
- id: psm_nr_col_pattern
  doc: Unique text pattern to identify number-of-psms column in input table.
  type: string
  inputBinding:
    prefix: --psmnrcolpattern
- id: ms_one_quant_col_pattern
  doc: Unique text pattern to identify precursor quant column in input table.
  type: string
  inputBinding:
    prefix: --ms1quantcolpattern
- id: fdr_col_pattern
  doc: Unique text pattern to identify FDR column in input table.
  type: string
  inputBinding:
    prefix: --fdrcolpattern
- id: multiple_input_files
  doc: Multiple input files of {} format
  type: string[]
  inputBinding:
    prefix: -i
- id: feat_col
  doc: Column number in table in which protein or gene accessions are. stored. First
    column number is 1. Use in case of not using standard first column
  type: string
  inputBinding:
    prefix: --featcol
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: merge_cut_off
  doc: FDR cutoff when building merged protein table, to use when a cutoff has been
    used before storing the table to lookup. FDR values need to be stored in the lookup
  type: string
  inputBinding:
    prefix: --mergecutoff
- id: no_group_annotation
  doc: For peptide table merging. Do not include protein group or gene data in output,
    just use accessions.
  type: boolean
  inputBinding:
    prefix: --no-group-annotation
- id: gene_centric
  doc: For peptide table merging. Do not include protein group data in output, but
    use gene names instead to count peptides per feature, determine peptide- uniqueness.
  type: boolean
  inputBinding:
    prefix: --genecentric
outputs: []
cwlVersion: v1.1
baseCommand:
- msstitch
- merge
