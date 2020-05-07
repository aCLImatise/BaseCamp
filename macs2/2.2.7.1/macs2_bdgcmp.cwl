class: CommandLineTool
id: macs2_bdgcmp.cwl
inputs:
- id: outdir
  doc: 'If specified all output files will be written to that directory. Default:
    the current working directory'
  type: string
  inputBinding:
    prefix: --outdir
- id: o_prefix
  doc: The PREFIX of output bedGraph file to write scores. If it is given as A, and
    method is 'ppois', output file will be A_ppois.bdg. Mutually exclusive with -o/--ofile.
  type: string
  inputBinding:
    prefix: --o-prefix
- id: ofile
  doc: Output filename. Mutually exclusive with --o-prefix. The number and the order
    of arguments for --ofile must be the same as for -m.
  type: string[]
  inputBinding:
    prefix: --ofile
outputs: []
cwlVersion: v1.1
baseCommand:
- macs2
- bdgcmp
