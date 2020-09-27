class: CommandLineTool
id: filtlong.cwl
inputs:
- id: in_keep_only_best
  doc: '[int], --target_bases [int]          keep only the best reads up to this many
    total bases'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_keep_only_percentage
  doc: '[float], --keep_percent [float]      keep only this percentage of the best
    reads (measured by bases)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_min_length
  doc: '[int]                     minimum length threshold'
  type: boolean
  inputBinding:
    prefix: --min_length
- id: in_min_mean_q
  doc: '[float]                   minimum mean quality threshold'
  type: boolean
  inputBinding:
    prefix: --min_mean_q
- id: in_min_window_q
  doc: '[float]                 minimum window quality threshold'
  type: boolean
  inputBinding:
    prefix: --min_window_q
- id: in_reference_assembly_fasta
  doc: '[file], --assembly [file]            reference assembly in FASTA format'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_one
  doc: '[file], --illumina_1 [file]          reference Illumina reads in FASTQ format'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: '[file], --illumina_2 [file]          reference Illumina reads in FASTQ format'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_length_weight
  doc: '[float]                weight given to the length score (default: 1)'
  type: boolean
  inputBinding:
    prefix: --length_weight
- id: in_mean_q_weight
  doc: '[float]                weight given to the mean quality score (default: 1)'
  type: boolean
  inputBinding:
    prefix: --mean_q_weight
- id: in_window_q_weight
  doc: '[float]              weight given to the window quality score (default: 1)'
  type: boolean
  inputBinding:
    prefix: --window_q_weight
- id: in_trim
  doc: trim non-k-mer-matching bases from start/end of reads
  type: boolean
  inputBinding:
    prefix: --trim
- id: in_split
  doc: '[split]                        split reads at this many (or more) consecutive
    non-k-mer-matching bases'
  type: boolean
  inputBinding:
    prefix: --split
- id: in_window_size
  doc: '[int]                    size of sliding window used when measuring window
    quality (default: 250)'
  type: boolean
  inputBinding:
    prefix: --window_size
- id: in_verbose
  doc: verbose output to stderr with info for each read
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_reads
  doc: input long reads to be filtered
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filtlong
