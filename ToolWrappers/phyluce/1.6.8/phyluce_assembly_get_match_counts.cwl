class: CommandLineTool
id: phyluce_assembly_get_match_counts.cwl
inputs:
- id: in_tax_on_list_config
  doc: "--taxon-group TAXON_GROUP --output\nOUTPUT [--incomplete-matrix]\n[--verbosity\
    \ {INFO,WARN,CRITICAL}]\n[--log-path LOG_PATH] [--optimize]\n[--random] [--samples\
    \ SAMPLES]\n[--sample-size SAMPLE_SIZE]\n[--extend-locus-db EXTEND_LOCUS_DB]\n\
    [--silent] [--keep-counts]"
  type: long
  inputBinding:
    prefix: --taxon-list-config
- id: in_locus_db
  doc: ''
  type: string
  inputBinding:
    prefix: --locus-db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_match_counts
