class: CommandLineTool
id: bgt_view.cwl
inputs:
- id: s
  doc: samples list (,sample1,sample2 or a file or expr; see Notes below) [all]
  type: string
  inputBinding:
    prefix: -s
- id: r
  doc: region [all]
  type: string
  inputBinding:
    prefix: -r
- id: b
  doc: extract variants overlapping BED FILE []
  type: File
  inputBinding:
    prefix: -B
- id: e
  doc: exclude variants overlapping BED FILE (effective with -B)
  type: boolean
  inputBinding:
    prefix: -e
- id: i
  doc: process from the INT-th record (1-based) []
  type: long
  inputBinding:
    prefix: -i
- id: n
  doc: process at most INT records []
  type: long
  inputBinding:
    prefix: -n
- id: d
  doc: variant annotations in FMF (to work with -a) []
  type: File
  inputBinding:
    prefix: -d
- id: m
  doc: load variant annotations in RAM (only with -d)
  type: boolean
  inputBinding:
    prefix: -M
- id: a
  doc: alleles list chr:1basedPos:refLen:seq (,allele1,allele2 or a file or expr)
    []
  type: string
  inputBinding:
    prefix: -a
- id: f
  doc: frequency filters []
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: BCF output (effective without -S/-H)
  type: boolean
  inputBinding:
    prefix: -b
- id: l
  doc: compression level for BCF [default]
  type: long
  inputBinding:
    prefix: -l
- id: u
  doc: equivalent to -bl0 (overriding -b and -l)
  type: boolean
  inputBinding:
    prefix: -u
- id: g
  doc: don't output sample genotypes
  type: boolean
  inputBinding:
    prefix: -G
- id: c
  doc: write AC/AN to the INFO field (auto applied with -f or multipl -s)
  type: boolean
  inputBinding:
    prefix: -C
- id: s
  doc: show samples with a set of alleles (with -a)
  type: boolean
  inputBinding:
    prefix: -S
- id: h
  doc: count of haplotypes with a set of alleles (with -a)
  type: boolean
  inputBinding:
    prefix: -H
- id: t
  doc: 'comma-delimited list of fields to output. Accepted variables: AC, AN, AC#,
    AN#, CHROM, POS, END, REF, ALT (# for a group number)'
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- bgt
- view
