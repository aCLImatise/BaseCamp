class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/to_fasta.py.cwl
inputs:
- id: three
  doc: 3'adapter sequence
  type: string
  inputBinding:
    prefix: '-3'
- id: five
  doc: 5'adapter sequence
  type: string
  inputBinding:
    prefix: '-5'
- id: trim_five_p
  doc: trim specified number of bases from 5'ends
  type: string
  inputBinding:
    prefix: --trim-5p
- id: trim_three_p
  doc: trim specified number of bases from 3'ends
  type: string
  inputBinding:
    prefix: --trim-3p
- id: seed_five_p
  doc: "5' adapter match length in bp (default: 7)"
  type: string
  inputBinding:
    prefix: --seed-5p
- id: seed_three_p
  doc: "3' adapter match length in bp (default: 7)"
  type: string
  inputBinding:
    prefix: --seed-3p
- id: minimum_read_length
  doc: 'minimum read length in bp (default: 16)'
  type: string
  inputBinding:
    prefix: -m
- id: maximum_read_length
  doc: 'maximum read length in bp (default: 36)'
  type: string
  inputBinding:
    prefix: -x
- id: sensitive_adapter_search
  doc: 'sensitive adapter search with 1 mismatch (default: off)'
  type: boolean
  inputBinding:
    prefix: -s
- id: only_print_reads
  doc: only print the reads with both 5' and 3' adapter matches
  type: boolean
  inputBinding:
    prefix: -B
- id: print_reads_specified
  doc: print all reads with and without adapter matches if the reads are in the range
    specified with '-m' and '-x'
  type: boolean
  inputBinding:
    prefix: -a
- id: fast_q
  doc: including stdin or compressed file {zip,gz,tar,bz}
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- to_fasta.py
