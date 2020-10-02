class: CommandLineTool
id: findErrors.cwl
inputs:
- id: in_seqstore_path_sequence
  doc: seqStore           path to a sequence store
  type: boolean
  inputBinding:
    prefix: -S
- id: in_path_overlap_store
  doc: ovlStore           path to an overlap store
  type: boolean
  inputBinding:
    prefix: -O
- id: in_bgn_end_compute
  doc: bgn end            only compute for reads bgn-end
  type: boolean
  inputBinding:
    prefix: -R
- id: in_outputname_write_corrections
  doc: output-name        write corrections to 'output-name'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_errorrate_expected_rate
  doc: error-rate         expected error rate in alignments
  type: boolean
  inputBinding:
    prefix: -e
- id: in_minoverlap
  doc: min-overlap
  type: boolean
  inputBinding:
    prefix: -l
- id: in_numthreads
  doc: num-threads
  type: boolean
  inputBinding:
    prefix: -t
- id: in_set_keep_flag
  doc: degree-threshold   set keep flag if fewer than this many overlaps
  type: boolean
  inputBinding:
    prefix: -d
- id: in_kmersize_minimum_exactmatch
  doc: kmer-size          minimum exact-match region to prevent change
  type: boolean
  inputBinding:
    prefix: -k
- id: in_do_use_haploct
  doc: don't use the haplo_ct
  type: boolean
  inputBinding:
    prefix: -p
- id: in_votelen_number_exact
  doc: vote-len           number of exact match bases around an error to vote to change
  type: boolean
  inputBinding:
    prefix: -V
- id: in_endexcludelen_length_exclude
  doc: end-exclude-len    length of end of exact match to exclude in preventing change
  type: boolean
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- findErrors
