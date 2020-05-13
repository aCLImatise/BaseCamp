class: CommandLineTool
id: pre_STAR.py.cwl
inputs:
- id: list
  doc: sampleName tab-delimiter path/to/fileName
  type: string
  inputBinding:
    prefix: --list
- id: an_no
  doc: specifies the path to the annotation (bed 6 file of genebounderies with info
    protein_coding;ENSG00000237683.5;AL627309.1 in column four.)
  type: string
  inputBinding:
    prefix: --anno
- id: intersect_bed
  doc: specifies the path to the intersectBed binary
  type: string
  inputBinding:
    prefix: --intersectBed
- id: outdir
  doc: specifies the path to ouput directory (tmp files are also created in this directory,
    they are removed by rm *.rm) (default is '.')
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- pre_STAR.py
