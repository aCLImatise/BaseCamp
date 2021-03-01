class: CommandLineTool
id: KmerStream.cwl
inputs:
- id: in_km_er_size
  doc: Size of k-mers, either a single value or comma separated list
  type: long?
  inputBinding:
    prefix: --kmer-size
- id: in_quality_cut_off
  doc: Comma separated list, keep k-mers with bases above quality threshold in PHRED
    (default 0)
  type: long?
  inputBinding:
    prefix: --quality-cutoff
- id: in_output
  doc: Filename for output
  type: File?
  inputBinding:
    prefix: --output
- id: in_error_rate
  doc: Error rate guaranteed (default value 0.01)
  type: double?
  inputBinding:
    prefix: --error-rate
- id: in_threads
  doc: SNumber of threads to use (default value 1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_seed
  doc: Seed value for the randomness (default value 0, use time based randomness)
  type: long?
  inputBinding:
    prefix: --seed
- id: in_bam
  doc: "Input is in BAM format (default false)\n--binary             Output is written\
    \ in binary format (default false)\n--tsv                Output is written in\
    \ TSV format (default false)\n--verbose            Print lots of messages during\
    \ run\n--online             Prints out estimates every 100K reads\n--q64     \
    \           set if PHRED+64 scores are used (@...h) default used PHRED+33\n"
  type: boolean?
  inputBinding:
    prefix: --bam
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Filename for output
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- KmerStream
