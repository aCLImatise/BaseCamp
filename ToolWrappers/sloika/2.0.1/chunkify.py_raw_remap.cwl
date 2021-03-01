class: CommandLineTool
id: chunkify.py_raw_remap.cwl
inputs:
- id: in_alphabet
  doc: "Alphabet of the sequences (default: b'ACGT')"
  type: string?
  inputBinding:
    prefix: --alphabet
- id: in_input_strand_list
  doc: 'Strand summary file containing subset (default: None)'
  type: File?
  inputBinding:
    prefix: --input_strand_list
- id: in_jobs
  doc: "Number of threads to use when processing data\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_km_er_len
  doc: 'Length of kmer to estimate (default: 5)'
  type: long?
  inputBinding:
    prefix: --kmer_len
- id: in_limit
  doc: 'Limit number of reads to process (default: None)'
  type: long?
  inputBinding:
    prefix: --limit
- id: in_no_overwrite
  doc: "Whether to overwrite any output files (Default: --no-\noverwrite) (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --no-overwrite
- id: in_blanks_percentile
  doc: "Percentile above which to filter out chunks with too\nmany blanks (default:\
    \ 95)"
  type: long?
  inputBinding:
    prefix: --blanks_percentile
- id: in_chunk_len
  doc: 'Length of each read chunk (default: 2000)'
  type: long?
  inputBinding:
    prefix: --chunk_len
- id: in_normalisation
  doc: "Whether to perform median-mad normalisation and with\nwhat scope (default:\
    \ per-read)"
  type: string?
  inputBinding:
    prefix: --normalisation
- id: in_trim
  doc: "end  Number of samples to trim off start and end (default:\n(200, 50))"
  type: long?
  inputBinding:
    prefix: --trim
- id: in_min_length
  doc: 'Minimum samples in acceptable read (default: 2500)'
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_down_sample_factor
  doc: 'Rate of label downsampling (default: 1)'
  type: long?
  inputBinding:
    prefix: --downsample_factor
- id: in_no_interpolation
  doc: "Interpolate reference sequence positions between\nmapped samples (Default:\
    \ --no-interpolation) (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --no-interpolation
- id: in_compile
  doc: 'File output compiled model (default: None)'
  type: File?
  inputBinding:
    prefix: --compile
- id: in_min_prob
  doc: "Minimum allowed probabiility for basecalls (default:\n1e-05)"
  type: double?
  inputBinding:
    prefix: --min_prob
- id: in_output_strand_list
  doc: "Strand summary output file (default:\nstrand_output_list.txt)"
  type: File?
  inputBinding:
    prefix: --output_strand_list
- id: in_prior
  doc: "end     Mean of start and end positions (default: (25.0,\n25.0))"
  type: double?
  inputBinding:
    prefix: --prior
- id: in_slip
  doc: 'Slip penalty (default: 5.0)'
  type: double?
  inputBinding:
    prefix: --slip
- id: in_open_pore_fraction
  doc: "Max fraction of signal to trim due to open pore\n(default: 0.0)\n"
  type: long?
  inputBinding:
    prefix: --open_pore_fraction
- id: in_input_folder
  doc: Directory containing single-read fast5 files
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output HDF5 file
  type: string
  inputBinding:
    position: 1
- id: in_model
  doc: Pickled model file
  type: string
  inputBinding:
    position: 2
- id: in_references
  doc: Reference sequences in fasta format
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_compile
  doc: 'File output compiled model (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_compile)
- id: out_output_strand_list
  doc: "Strand summary output file (default:\nstrand_output_list.txt)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_strand_list)
hints: []
cwlVersion: v1.1
baseCommand:
- chunkify.py
- raw_remap
