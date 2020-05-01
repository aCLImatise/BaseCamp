#!/usr/bin/env cwl-runner

baseCommand:
- str8rzr
class: CommandLineTool
cwlVersion: v1.0
id: str8rzr
inputs:
- doc: (no reverse complement-- this turns off the default behavior of reverse-complementing
    matches on the negative strand)
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: (verbose ; prints out additional diagnostic information)
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: (Include anchors ; includes the Anchor sequences in the reported haplotypes)
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: (default 1; the maximum Hamming distance used with anchor search. can only
    be 0, 1 or 2)
  id: a
  inputBinding:
    prefix: -a
  type: long
- doc: (default 0; the maximum Hamming distance used with motif search. can only be
    0 or 1)
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: (REQUIRED; the locus config file used to define the STRs)
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: (The number of processors/cpus used)
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: (This filters on Type, e.g. AUTOSOMES; ie, it restricts the output to STRs
    that have the same type as specified in column 2 of the config file)
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: (This writes the output to filename, as opposed to standard out)
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: (Min match; this causes haplotypes with less than f occurences to be omitted
    from the final output file
  id: f
  inputBinding:
    prefix: -f
  type: long
