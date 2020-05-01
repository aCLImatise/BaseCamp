#!/usr/bin/env cwl-runner

baseCommand:
- blocksplit
class: CommandLineTool
cwlVersion: v1.0
id: blocksplit
inputs:
- doc: The input VCF/BCF file(s) (use file:sample to  specify a sample)
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: '[ --output ] arg        Write a bed file giving the locations of  overlapping
    blocks (use - for stdout).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --regions ] arg       Use a bed file for getting a subset of regions  (traversal
    via tabix).'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '[ --targets ] arg       Use a bed file for getting a subset of targets  (streaming
    the whole file, ignoring things outside the bed regions).'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: '[ --location ] arg      The location / subset.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --limit-records ] arg Maximum number of records to process'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: '[ --message-every ] arg Print a message every N records.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --window ] arg        Overlap window length.'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: '[ --nblocks ] arg       Maximum number of blocks to break into (32).'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --nvars ] arg         Minimum number of variants per block (100).'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Verbose output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
