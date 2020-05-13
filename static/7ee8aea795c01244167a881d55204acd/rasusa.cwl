class: CommandLineTool
id: rasusa.cwl
inputs:
- id: v
  doc: Switch on verbosity.
  type: boolean
  inputBinding:
    prefix: -v
- id: coverage
  doc: The desired coverage to sub-sample the reads to.
  type: string
  inputBinding:
    prefix: --coverage
- id: genome_size
  doc: Size of the genome to calculate coverage with respect to. i.e 4.3kb, 7Tb, 9000,
    4.1MB etc.
  type: string
  inputBinding:
    prefix: --genome-size
- id: input
  doc: '...             The fast{a,q} file(s) to subsample. For paired Illumina you
    may either pass this flag twice `-i r1.fq -i r2.fq` or give two files consecutively
    `-i r1.fq r2.fq`.'
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: '...           Output file(s), stdout if not present. For paired Illumina you
    may either pass this flag twice `-o o1.fq -o o2.fq` or give two files consecutively
    `-o o1.fq o2.fq`. NOTE: The order of the pairs is assumed to be the same as that
    given for --input. This option is required for paired input.'
  type: string
  inputBinding:
    prefix: --output
- id: seed
  doc: Random seed to use.
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- rasusa
