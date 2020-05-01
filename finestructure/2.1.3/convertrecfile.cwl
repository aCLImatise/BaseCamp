#!/usr/bin/env cwl-runner

baseCommand:
- convertrecfile.pl
class: CommandLineTool
cwlVersion: v1.0
id: convertrecfile.pl
inputs:
- doc: ': <val>:      Specify the major mode. <val> can be: hapmap: The hapmap format
    is specified as 4 columns: chromosome, Position(BP) Rate(cM/Mb) Map(cM) This uses
    columns 2 and 4 to reconstruct the map. plain:  (default) Assumes that the data
    are specified in 2 columns, Position(BP) Rate(M/b) This is the mode assumed chromopainter
    (note: the rate is Morgans per base).'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: ':            Verbose mode.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ':             Detailed help on the wide variety of different options, including
    different column separators, different units, reading of Culmulative vs non-culmulative
    distributions, and handling maps that do not cover the full range of the SNPs.'
  id: h
  inputBinding:
    prefix: -H
  type: boolean
