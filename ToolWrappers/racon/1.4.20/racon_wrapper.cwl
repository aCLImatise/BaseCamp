class: CommandLineTool
id: racon_wrapper.cwl
inputs:
- id: in_split
  doc: "split target sequences into chunks of desired size in\nbytes (default: None)"
  type: long?
  inputBinding:
    prefix: --split
- id: in_subsample
  doc: "SUBSAMPLE\nsubsample sequences to desired coverage (2nd argument)\ngiven the\
    \ reference length (1st argument) (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --subsample
- id: in_include_unpolished
  doc: 'output unpolished target sequences (default: False)'
  type: boolean?
  inputBinding:
    prefix: --include-unpolished
- id: in_fragment_correction
  doc: "perform fragment correction instead of contig\npolishing (overlaps file should\
    \ contain dual/self\noverlaps!) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --fragment-correction
- id: in_window_length
  doc: "size of window on which POA is performed (default:\n500)"
  type: long?
  inputBinding:
    prefix: --window-length
- id: in_quality_threshold
  doc: "threshold for average base quality of windows used in\nPOA (default: 10.0)"
  type: double?
  inputBinding:
    prefix: --quality-threshold
- id: in_error_threshold
  doc: "maximum allowed error rate used for filtering overlaps\n(default: 0.3)"
  type: double?
  inputBinding:
    prefix: --error-threshold
- id: in_match
  doc: 'score for matching bases (default: 5)'
  type: long?
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: 'score for mismatching bases (default: -4)'
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_gap
  doc: 'gap penalty (must be negative) (default: -8)'
  type: long?
  inputBinding:
    prefix: --gap
- id: in_threads
  doc: 'number of threads (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_cuda_aligner_batches
  doc: "number of batches for CUDA accelerated alignment\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --cudaaligner-batches
- id: in_cuda_poa_batches
  doc: "number of batches for CUDA accelerated polishing\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --cudapoa-batches
- id: in_cuda_banded_alignment
  doc: "use banding approximation for polishing on GPU. Only\napplicable when -c is\
    \ used. (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --cuda-banded-alignment
- id: in_sequences
  doc: "input file in FASTA/FASTQ format (can be compressed\nwith gzip) containing\
    \ sequences used for correction"
  type: string
  inputBinding:
    position: 0
- id: in_overlaps
  doc: "input file in MHAP/PAF/SAM format (can be compressed\nwith gzip) containing\
    \ overlaps between sequences and\ntarget sequences"
  type: string
  inputBinding:
    position: 1
- id: in_target_sequences
  doc: "input file in FASTA/FASTQ format (can be compressed\nwith gzip) containing\
    \ sequences which will be\ncorrected"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/racon:1.4.20--he513fc3_0
cwlVersion: v1.1
baseCommand:
- racon_wrapper
