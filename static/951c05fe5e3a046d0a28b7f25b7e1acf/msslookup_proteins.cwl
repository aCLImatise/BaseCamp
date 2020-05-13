class: CommandLineTool
id: msslookup_proteins.cwl
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
  doc: Do not include protein group data in output. Should be one of [genes, assoc].
    With assoc, associated gene IDs are used from e.g. Biomart rather than the ones
    found in the FASTA db used for PSM search. These need to have been stored when
    creating a PSM lookup.
  type: string
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
- id: prob_col_pattern
  doc: Unique text pattern to identify protein probability column in input table.
  type: string
  inputBinding:
    prefix: --probcolpattern
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
- id: prot_col
  doc: Column number in table in which protein or gene accessions are. stored. First
    column number is 1. Use in case of not using standard first column
  type: string
  inputBinding:
    prefix: --protcol
outputs: []
cwlVersion: v1.1
baseCommand:
- msslookup
- proteins
