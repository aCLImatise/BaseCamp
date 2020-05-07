class: CommandLineTool
id: bwise.cwl
inputs:
- id: x
  doc: input fasta or (compressed .gz if -c option is != 0) paired-end read files.
    Several read files must be concatenated.
  type: string
  inputBinding:
    prefix: -x
- id: u
  doc: input fasta or (compressed .gz if -c option is != 0) single-end read files.
    Several read files must be concatenated.
  type: string
  inputBinding:
    prefix: -u
- id: s
  doc: an integer, k-mers present strictly less than this number of times in the dataset
    will be discarded (default 2)
  type: string
  inputBinding:
    prefix: -s
- id: s
  doc: an integer, minimal unitig coverage for first cleaning (default 5)
  type: string
  inputBinding:
    prefix: -S
- id: p
  doc: an integer, super-reads present strictly less than this number of times will
    be discarded (default 3)
  type: string
  inputBinding:
    prefix: -p
- id: p
  doc: an integer, unitigs with less than S reads mapped is filtred (default 3)
  type: string
  inputBinding:
    prefix: -P
- id: k
  doc: an integer, smallest k-mer size (default 63)
  type: string
  inputBinding:
    prefix: -k
- id: k
  doc: an integer, largest k-mer size (default 201)
  type: string
  inputBinding:
    prefix: -K
- id: e
  doc: Anchors to test for mapping (default 1000)
  type: string
  inputBinding:
    prefix: -e
- id: a
  doc: Anchors size (default 31)
  type: string
  inputBinding:
    prefix: -a
- id: i
  doc: Fraction of the anchor that are indexed (default all, put 10 to index one out
    of 10 anchors)
  type: string
  inputBinding:
    prefix: -i
- id: a
  doc: maximal ccurence for an indexed anchor (default 1)
  type: long
  inputBinding:
    prefix: -A
- id: m
  doc: missmatch allowed in mapping (default 10)
  type: string
  inputBinding:
    prefix: -m
- id: g
  doc: Greedy contig extension
  type: string
  inputBinding:
    prefix: -g
- id: t
  doc: number of cores used (default max)
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: path to store the results (default = current directory)
  type: string
  inputBinding:
    prefix: -o
- id: h
  doc: Produce a haploid assembly
  type: string
  inputBinding:
    prefix: -H
outputs: []
cwlVersion: v1.1
baseCommand:
- bwise
