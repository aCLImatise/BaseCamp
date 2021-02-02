class: CommandLineTool
id: basecall_network.py_raw.cwl
inputs:
- id: in_alphabet
  doc: "Alphabet of the sequences (default: b'ACGT')"
  type: string
  inputBinding:
    prefix: --alphabet
- id: in_compile
  doc: 'File output compiled model (default: None)'
  type: File
  inputBinding:
    prefix: --compile
- id: in_input_strand_list
  doc: 'Strand summary file containing subset (default: None)'
  type: File
  inputBinding:
    prefix: --input_strand_list
- id: in_jobs
  doc: "Number of threads to use when processing data\n(default: 1)"
  type: long
  inputBinding:
    prefix: --jobs
- id: in_km_er_len
  doc: 'Length of kmer (default: 5)'
  type: long
  inputBinding:
    prefix: --kmer_len
- id: in_limit
  doc: 'Limit number of reads to process (default: None)'
  type: long
  inputBinding:
    prefix: --limit
- id: in_min_prob
  doc: "Minimum allowed probabiility for basecalls (default:\n1e-05)"
  type: double
  inputBinding:
    prefix: --min_prob
- id: in_skip
  doc: 'Skip penalty (default: 0.0)'
  type: double
  inputBinding:
    prefix: --skip
- id: in_trans
  doc: "step skip\nBase transition probabilities (default: None)"
  type: string
  inputBinding:
    prefix: --trans
- id: in_no_transducer
  doc: "Model is transducer (Default: --transducer) (default:\nTrue)"
  type: boolean
  inputBinding:
    prefix: --no-transducer
- id: in_no_bad
  doc: "Model emits bad signal blocks as a separate state\n(Default: --bad) (default:\
    \ True)"
  type: boolean
  inputBinding:
    prefix: --no-bad
- id: in_open_pore_fraction
  doc: "Max fraction of signal to trim due to open pore\n(default: 0)"
  type: long
  inputBinding:
    prefix: --open_pore_fraction
- id: in_trim
  doc: "end  Number of samples to trim off start and end (default:\n(200, 10))\n"
  type: long
  inputBinding:
    prefix: --trim
- id: in_model
  doc: Pickled model file
  type: string
  inputBinding:
    position: 0
- id: in_input_folder
  doc: Directory containing single-read fast5 files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_compile
  doc: 'File output compiled model (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_compile)
cwlVersion: v1.1
baseCommand:
- basecall_network.py
- raw
