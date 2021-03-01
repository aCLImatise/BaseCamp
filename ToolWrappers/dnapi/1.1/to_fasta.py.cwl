class: CommandLineTool
id: to_fasta.py.cwl
inputs:
- id: in_three
  doc: 3'adapter sequence
  type: long?
  inputBinding:
    prefix: '-3'
- id: in_five
  doc: 5'adapter sequence
  type: long?
  inputBinding:
    prefix: '-5'
- id: in_trim_five_p
  doc: trim specified number of bases from 5'ends
  type: long?
  inputBinding:
    prefix: --trim-5p
- id: in_trim_three_p
  doc: trim specified number of bases from 3'ends
  type: long?
  inputBinding:
    prefix: --trim-3p
- id: in_seed_five_p
  doc: "5' adapter match length in bp (default: 7)"
  type: long?
  inputBinding:
    prefix: --seed-5p
- id: in_seed_three_p
  doc: "3' adapter match length in bp (default: 7)"
  type: long?
  inputBinding:
    prefix: --seed-3p
- id: in_minimum_read_length
  doc: 'minimum read length in bp (default: 16)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_maximum_read_length
  doc: 'maximum read length in bp (default: 36)'
  type: long?
  inputBinding:
    prefix: -x
- id: in_sensitive_adapter_search
  doc: 'sensitive adapter search with 1 mismatch (default: off)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_only_print_reads
  doc: only print the reads with both 5' and 3' adapter matches
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_print_reads_specified
  doc: "print all reads with and without adapter matches if the reads\nare in the\
    \ range specified with '-m' and '-x'\n"
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- to_fasta.py
