class: CommandLineTool
id: fastqSample.cwl
inputs:
- id: in_input_name_prefix
  doc: input name (prefix) of the reads
  type: string?
  inputBinding:
    prefix: -I
- id: in_total_number_supplied
  doc: total number of mate pairs in the input (if not supplied, will be counted)
  type: long?
  inputBinding:
    prefix: -T
- id: in_length_single_supplied
  doc: length of a single read (if not supplied, will be determined)
  type: long?
  inputBinding:
    prefix: -L
- id: in_reads_unmated_expected
  doc: reads are unmated, expected in *.u.fastq
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_output_name_prefix
  doc: output name (prefix) of the reads (default is same as -I)
  type: string?
  inputBinding:
    prefix: -O
- id: in_automatically_include_coverage
  doc: automatically include coverage or number of reads in the output name
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_ignore_reads_shorter
  doc: ignore reads shorter than L bases
  type: string?
  inputBinding:
    prefix: -m
- id: in_max
  doc: don't sample randomly, pick the longest reads
  type: boolean?
  inputBinding:
    prefix: -max
- id: in_genome_size
  doc: genome size
  type: long?
  inputBinding:
    prefix: -g
- id: in_desired_coverage_output
  doc: desired coverage in the output reads
  type: string?
  inputBinding:
    prefix: -c
- id: in_mated_reads_output
  doc: "for mated reads, output 2N reads, or N pairs of reads\nfor unmated reads,\
    \ output N reads"
  type: long?
  inputBinding:
    prefix: -p
- id: in_output_t_pairs
  doc: "output F * T pairs of reads (T as above in -t option)\n0.0 < F <= 1.0"
  type: double?
  inputBinding:
    prefix: -f
- id: in_output_readspairs_b
  doc: output reads/pairs until B bases is exceeded
  type: string?
  inputBinding:
    prefix: -b
- id: in_opts
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastqSample
