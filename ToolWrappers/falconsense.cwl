class: CommandLineTool
id: falconsense.cwl
inputs:
- id: in_mandatory_path_to_seqstore
  doc: mandatory path to seqStore
  type: File
  inputBinding:
    prefix: -S
- id: in_mandatory_path_to_corstore
  doc: mandatory path to corStore
  type: File
  inputBinding:
    prefix: -C
- id: in_output_filename_prefix
  doc: output filename prefix
  type: File
  inputBinding:
    prefix: -p
- id: in_cns
  doc: enable primary output (to 'prefix.cns')
  type: boolean
  inputBinding:
    prefix: -cns
- id: in_fast_q
  doc: enable fastq output (to 'prefix.fastq')
  type: boolean
  inputBinding:
    prefix: -fastq
- id: in_log
  doc: enable (debug) logging output (to 'prefix.log')
  type: boolean
  inputBinding:
    prefix: -log
- id: in_number_use_default
  doc: 'number of compute threads to use (default: all)'
  type: long
  inputBinding:
    prefix: -t
- id: in_align_evidence_full
  doc: align evidence to the full read, ignore overlap position
  type: boolean
  inputBinding:
    prefix: -f
- id: in_only_process_reads_listed
  doc: only process reads listed in file 'readsToCorrect'
  type: File
  inputBinding:
    prefix: -R
- id: in_only_process_reads_id
  doc: "[-end]       only process reads from ID 'bgn' to 'end' (inclusive)"
  type: string
  inputBinding:
    prefix: -r
- id: in_cc
  doc: 'output:   minimum consensus coverage needed call a corrected base'
  type: string
  inputBinding:
    prefix: -cc
- id: in_cl
  doc: 'output:   minimum length of corrected region to output as a corrected read'
  type: long
  inputBinding:
    prefix: -cl
- id: in_oi
  doc: 'evidence: minimum identity of an aligned evidence read overlap'
  type: string
  inputBinding:
    prefix: -oi
- id: in_ol
  doc: 'evidence: minimum length   of an aligned evidence read overlap'
  type: long
  inputBinding:
    prefix: -ol
- id: in_partition
  doc: "m R   configure jobs to fit in M GB memory with not more than R reads per\
    \ batch,\nallowing m GB memory for processing.  write output to 'prefix.batches'."
  type: string
  inputBinding:
    prefix: -partition
- id: in_export
  doc: write the data used for the computation to file 'name'
  type: File
  inputBinding:
    prefix: -export
- id: in_import
  doc: compute using the data in file 'name'
  type: File
  inputBinding:
    prefix: -import
- id: in_o
  doc: ''
  type: string[]
  inputBinding:
    prefix: -O
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename_prefix
  doc: output filename prefix
  type: File
  outputBinding:
    glob: $(inputs.in_output_filename_prefix)
cwlVersion: v1.1
baseCommand:
- falconsense
