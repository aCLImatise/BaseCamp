#!/usr/bin/env cwl-runner

baseCommand:
- fseq
class: CommandLineTool
cwlVersion: v1.0
id: fseq
inputs:
- doc: background directory (default=none)
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: genomic count of sequence reads (defualt = calculated)
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: input directory (default=current directory)
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: fragment size (default=estimated from data)
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: feature length (default=600)
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: output directory (default=current directory)
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: <wig | bed | npf>   output format (default wig)
  id: of
  inputBinding:
    prefix: -of
  type: boolean
- doc: ploidy/input directory (default=none)
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: wiggle track step (default=1)
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: threshold (standard deviations) (default=4.0)
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: verbose output
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: wg threshold set (defualt = calculated)
  id: wg
  inputBinding:
    prefix: -wg
  type: string
