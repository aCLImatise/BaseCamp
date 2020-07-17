class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/findErrors.cwl
inputs:
- id: path_sequence_store
  doc: seqStore           path to a sequence store
  type: boolean
  inputBinding:
    prefix: -S
- id: ovlstore_path_overlap
  doc: ovlStore           path to an overlap store
  type: boolean
  inputBinding:
    prefix: -O
- id: bgn_end_only
  doc: bgn end            only compute for reads bgn-end
  type: boolean
  inputBinding:
    prefix: -R
- id: outputname_write_corrections
  doc: output-name        write corrections to 'output-name'
  type: boolean
  inputBinding:
    prefix: -o
- id: errorrate_expected_rate
  doc: error-rate         expected error rate in alignments
  type: boolean
  inputBinding:
    prefix: -e
- id: minoverlap_
  doc: 'min-overlap        '
  type: boolean
  inputBinding:
    prefix: -l
- id: numthreads_
  doc: 'num-threads        '
  type: boolean
  inputBinding:
    prefix: -t
- id: degreethreshold_set_keep
  doc: degree-threshold   set keep flag if fewer than this many overlaps
  type: boolean
  inputBinding:
    prefix: -d
- id: kmersize_minimum_exactmatch
  doc: kmer-size          minimum exact-match region to prevent change
  type: boolean
  inputBinding:
    prefix: -k
- id: do_use_haploct
  doc: don't use the haplo_ct
  type: boolean
  inputBinding:
    prefix: -p
- id: votelen_number_exact
  doc: vote-len           number of exact match bases around an error to vote to change
  type: boolean
  inputBinding:
    prefix: -V
- id: length_end_exclude
  doc: end-exclude-len    length of end of exact match to exclude in preventing change
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- findErrors
