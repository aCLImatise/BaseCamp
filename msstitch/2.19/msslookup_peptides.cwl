class: CommandLineTool
id: msslookup_peptides.cwl
inputs:
- id: i
  doc: Multiple input files of {} format
  type: string[]
  inputBinding:
    prefix: -i
- id: dbfile
  doc: Database lookup file
  type: string
  inputBinding:
    prefix: --dbfile
- id: gene_centric
  doc: Do not include protein group data in output, but use gene names instead. These
    need to have been stored when creating a PSM lookup.
  type: boolean
  inputBinding:
    prefix: --genecentric
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
- id: ms1quantcol_pattern
  doc: Unique text pattern to identify precursor quant column in input table.
  type: string
  inputBinding:
    prefix: --ms1quantcolpattern
- id: fdr_col_pattern
  doc: Unique text pattern to identify FDR column in input table.
  type: string
  inputBinding:
    prefix: --fdrcolpattern
- id: pep_col_pattern
  doc: Unique text pattern to identify protein PEP column in input table.
  type: string
  inputBinding:
    prefix: --pepcolpattern
- id: peptide_col
  doc: Column nr of peptide table where peptide sequences are stored. First column
    is nr. 1
  type: string
  inputBinding:
    prefix: --peptidecol
outputs: []
cwlVersion: v1.1
baseCommand:
- msslookup
- peptides
