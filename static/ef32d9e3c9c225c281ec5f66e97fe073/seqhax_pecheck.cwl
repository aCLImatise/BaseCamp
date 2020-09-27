class: CommandLineTool
id: seqhax_pecheck.cwl
inputs:
- id: in_output_interleaved_reads
  doc: "Output interleaved reads to FILE. Use - for stdout.\nAll sets of paired end\
    \ files will end up in same\noutput!!! (default: no output)"
  type: File
  inputBinding:
    prefix: -o
- id: in_interleaved_inputs
  doc: Interleaved inputs
  type: boolean
  inputBinding:
    prefix: -i
- id: in_print_tabular_summary
  doc: Don't print tabular summary
  type: boolean
  inputBinding:
    prefix: -q
- id: in_number_parallel_threads
  doc: 'Number of parallel threads (default: no output)'
  type: long
  inputBinding:
    prefix: -t
- id: in_r_one_fq
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_r_two_fq
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_interleaved_reads
  doc: "Output interleaved reads to FILE. Use - for stdout.\nAll sets of paired end\
    \ files will end up in same\noutput!!! (default: no output)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_interleaved_reads)
cwlVersion: v1.1
baseCommand:
- seqhax
- pecheck
