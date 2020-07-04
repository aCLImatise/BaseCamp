class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/convertrecfile.pl.cwl
inputs:
- id: val_specify_val
  doc: ': <val>:      Specify the major mode. <val> can be: hapmap: The hapmap format
    is specified as 4 columns: chromosome, Position(BP) Rate(cM/Mb) Map(cM) This uses
    columns 2 and 4 to reconstruct the map. plain:  (default) Assumes that the data
    are specified in 2 columns, Position(BP) Rate(M/b) This is the mode assumed chromopainter
    (note: the rate is Morgans per base).'
  type: boolean
  inputBinding:
    prefix: -M
- id: _verbose_mode
  doc: ':            Verbose mode.'
  type: boolean
  inputBinding:
    prefix: -v
- id: detailed_help_wide
  doc: ':             Detailed help on the wide variety of different options, including
    different column separators, different units, reading of Culmulative vs non-culmulative
    distributions, and handling maps that do not cover the full range of the SNPs.'
  type: boolean
  inputBinding:
    prefix: -H
outputs: []
cwlVersion: v1.1
baseCommand:
- convertrecfile.pl
