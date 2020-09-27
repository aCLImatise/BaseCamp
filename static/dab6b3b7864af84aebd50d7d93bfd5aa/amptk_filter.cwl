class: CommandLineTool
id: amptk_filter.cwl
inputs:
- id: in_otu_table
  doc: OTU table
  type: boolean
  inputBinding:
    prefix: --otu_table
- id: in_fast_a
  doc: OTU fasta
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_out
  doc: 'Base name for output files. Default: use input basename'
  type: boolean
  inputBinding:
    prefix: --out
- id: in_mock_barcode
  doc: Name of barcode of mock community (Recommended)
  type: boolean
  inputBinding:
    prefix: --mock_barcode
- id: in_mc
  doc: Mock community FASTA file. Required if -b passed. [synmock,mock1,mock2,mock3,other]
  type: boolean
  inputBinding:
    prefix: --mc
- id: in_calculate
  doc: 'Calculate index-bleed options. Default: all [in,all]'
  type: boolean
  inputBinding:
    prefix: --calculate
- id: in_drop
  doc: Sample(s) to drop from OTU table. (list, separate by space)
  type: boolean
  inputBinding:
    prefix: --drop
- id: in_negatives
  doc: Negative sample names. (list, separate by space)
  type: boolean
  inputBinding:
    prefix: --negatives
- id: in_ignore
  doc: Ignore sample(s) during index-bleed calc (list, separate by space)
  type: boolean
  inputBinding:
    prefix: --ignore
- id: in_index_bleed
  doc: 'Filter index bleed between samples (percent). Default: 0.005'
  type: boolean
  inputBinding:
    prefix: --index_bleed
- id: in_threshold
  doc: 'Number to use for establishing read count threshold. Default: max [max,sum,top5,top10,top25]'
  type: boolean
  inputBinding:
    prefix: --threshold
- id: in_subtract
  doc: 'Threshold to subtract from all OTUs (any number or auto). Default: 0'
  type: boolean
  inputBinding:
    prefix: --subtract
- id: in_delimiter
  doc: 'Delimiter of OTU tables. Default: tsv  [csv, tsv]'
  type: boolean
  inputBinding:
    prefix: --delimiter
- id: in_min_reads_otu
  doc: 'Minimum number of reads for valid OTU from whole experiment. Default: 2'
  type: boolean
  inputBinding:
    prefix: --min_reads_otu
- id: in_min_samples_otu
  doc: 'Minimum number of samples for valid OTU from whole experiment. Default: 1'
  type: boolean
  inputBinding:
    prefix: --min_samples_otu
- id: in_col_order
  doc: 'Column order (separate by space). Default: sort naturally'
  type: boolean
  inputBinding:
    prefix: --col_order
- id: in_keep_mock
  doc: 'Keep Spike-in mock community. Default: False'
  type: boolean
  inputBinding:
    prefix: --keep_mock
- id: in_show_stats
  doc: Show OTU stats on STDOUT
  type: boolean
  inputBinding:
    prefix: --show_stats
- id: in_debug
  doc: Keep intermediate files.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_u_search
  doc: 'USEARCH executable. Default: usearch9'
  type: boolean
  inputBinding:
    prefix: --usearch
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- amptk
- filter
