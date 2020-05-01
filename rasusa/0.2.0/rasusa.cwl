#!/usr/bin/env cwl-runner

baseCommand:
- rasusa
class: CommandLineTool
cwlVersion: v1.0
id: rasusa
inputs:
- doc: Switch on verbosity.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: The desired coverage to sub-sample the reads to.
  id: coverage
  inputBinding:
    prefix: --coverage
  type: string
- doc: Size of the genome to calculate coverage with respect to. i.e 4.3kb, 7Tb, 9000,
    4.1MB etc.
  id: genome_size
  inputBinding:
    prefix: --genome-size
  type: string
- doc: '...             The fast{a,q} file(s) to subsample. For paired Illumina you
    may either pass this flag twice `-i r1.fq -i r2.fq` or give two files consecutively
    `-i r1.fq r2.fq`.'
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: '...           Output file(s), stdout if not present. For paired Illumina you
    may either pass this flag twice `-o o1.fq -o o2.fq` or give two files consecutively
    `-o o1.fq o2.fq`. NOTE: The order of the pairs is assumed to be the same as that
    given for --input. This option is required for paired input.'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Random seed to use.
  id: seed
  inputBinding:
    prefix: --seed
  type: string
