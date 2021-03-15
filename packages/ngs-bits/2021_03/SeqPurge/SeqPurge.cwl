class: CommandLineTool
id: SeqPurge.cwl
inputs:
- id: in_in_one
  doc: Forward input gzipped FASTQ file(s).
  type: File?
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: Reverse input gzipped FASTQ file(s).
  type: File?
  inputBinding:
    prefix: -in2
- id: in_out_one
  doc: Forward output gzipped FASTQ file.
  type: File?
  inputBinding:
    prefix: -out1
- id: in_out_two
  doc: Reverse output gzipped FASTQ file.
  type: File?
  inputBinding:
    prefix: -out2
- id: in_a_one
  doc: "Forward adapter sequence (at least 15 bases).\nDefault value: 'AGATCGGAAGAGCACACGTCTGAACTCCAGTCA'"
  type: long?
  inputBinding:
    prefix: -a1
- id: in_a_two
  doc: "Reverse adapter sequence (at least 15 bases).\nDefault value: 'AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT'"
  type: long?
  inputBinding:
    prefix: -a2
- id: in_match_perc
  doc: "Minimum percentage of matching bases for sequence/adapter matches.\nDefault\
    \ value: '80'"
  type: double?
  inputBinding:
    prefix: -match_perc
- id: in_mep
  doc: "Maximum error probability of insert and adapter matches.\nDefault value: '1e-06'"
  type: double?
  inputBinding:
    prefix: -mep
- id: in_q_cut
  doc: "Quality trimming cutoff for trimming from the end of reads using a sliding\
    \ window approach. Set to 0 to disable.\nDefault value: '15'"
  type: long?
  inputBinding:
    prefix: -qcut
- id: in_q_win
  doc: "Quality trimming window size.\nDefault value: '5'"
  type: long?
  inputBinding:
    prefix: -qwin
- id: in_q_off
  doc: "Quality trimming FASTQ score offset.\nDefault value: '33'"
  type: long?
  inputBinding:
    prefix: -qoff
- id: in_n_cut
  doc: "Number of subsequent Ns to trimmed using a sliding window approach from the\
    \ front of reads. Set to 0 to disable.\nDefault value: '7'"
  type: long?
  inputBinding:
    prefix: -ncut
- id: in_min_len
  doc: "Minimum read length after adapter trimming. Shorter reads are discarded.\n\
    Default value: '30'"
  type: long?
  inputBinding:
    prefix: -min_len
- id: in_threads
  doc: "The number of threads used for trimming (two additional threads are used for\
    \ reading and writing).\nDefault value: '1'"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_out_three
  doc: "Name prefix of singleton read output files (if only one read of a pair is\
    \ discarded).\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out3
- id: in_summary
  doc: "Write summary/progress to this file instead of STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -summary
- id: in_qc
  doc: "If set, a read QC file in qcML format is created (just like ReadQC).\nDefault\
    \ value: ''"
  type: File?
  inputBinding:
    prefix: -qc
- id: in_prefetch
  doc: "Maximum number of reads that may be pre-fetched into memory to speed up trimming.\n\
    Default value: '1000'"
  type: long?
  inputBinding:
    prefix: -prefetch
- id: in_ec
  doc: "Enable error-correction of adapter-trimmed reads (only those with insert match).\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -ec
- id: in_debug
  doc: "Enables debug output (use only with one thread).\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_progress
  doc: "Enables progress output at the given interval in milliseconds (disabled by\
    \ default).\nDefault value: '-1'"
  type: long?
  inputBinding:
    prefix: -progress
- id: in_compression_level
  doc: "Output FASTQ compression level from 1 (fastest) to 9 (best compression).\n\
    Default value: '1'"
  type: long?
  inputBinding:
    prefix: -compression_level
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_one
  doc: Forward output gzipped FASTQ file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_one)
- id: out_out_two
  doc: Reverse output gzipped FASTQ file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_two)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- SeqPurge
