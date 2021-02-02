class: CommandLineTool
id: ../../../rasusa.cwl
inputs:
- id: in_switch_on_verbosity
  doc: Switch on verbosity.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_coverage
  doc: The desired coverage to sub-sample the reads to.
  type: string
  inputBinding:
    prefix: --coverage
- id: in_genome_size
  doc: "Size of the genome to calculate coverage with respect to. i.e 4.3kb, 7Tb,\
    \ 9000,\n4.1MB etc."
  type: long
  inputBinding:
    prefix: --genome-size
- id: in_input
  doc: "...             The fast{a,q} file(s) to subsample. For paired Illumina you\
    \ may either pass this\nflag twice `-i r1.fq -i r2.fq` or give two files consecutively\
    \ `-i r1.fq r2.fq`."
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "...           Output file(s), stdout if not present. For paired Illumina you\
    \ may either pass\nthis flag twice `-o o1.fq -o o2.fq` or give two files consecutively\
    \ `-o o1.fq\no2.fq`. NOTE: The order of the pairs is assumed to be the same as\
    \ that given for\n--input. This option is required for paired input."
  type: File
  inputBinding:
    prefix: --output
- id: in_seed
  doc: Random seed to use.
  type: string
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rasusa
