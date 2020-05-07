class: CommandLineTool
id: fsnviz.cwl
inputs:
- id: out_dir
  doc: 'Output directory. Default: current run directory.'
  type: File
  inputBinding:
    prefix: --out-dir
- id: base_name
  doc: Base file name of the image output. Filename extensions will be added accordingly.
  type: string
  inputBinding:
    prefix: --base-name
- id: karyotype
  doc: '[human.hg19|human.hg38] Karyotype to use. Must be supported by circos. If
    the `--karyotype-file` parameter is defined, this parameter is ignored. Default:
    human.hg19.'
  type: boolean
  inputBinding:
    prefix: --karyotype
- id: circo_s_conf
  doc: Circos configuration file. If not supplied, fsnviz generates a default one.
  type: File
  inputBinding:
    prefix: --circos-conf
- id: png
  doc: '/ --no-png                Whether to create PNG plots or not. Default: no.'
  type: boolean
  inputBinding:
    prefix: --png
- id: svg
  doc: '/ --no-svg                Whether to create SVG plots or not. Default: yes.'
  type: boolean
  inputBinding:
    prefix: --svg
- id: karyotype_file
  doc: Karyotype file to use. This parameter takes precedence over the `--karyotype`
    parameter.
  type: File
  inputBinding:
    prefix: --karyotype-file
- id: circo_s_exe
  doc: 'Circos executable. Default: circos (the one accessible via PATH).'
  type: string
  inputBinding:
    prefix: --circos-exe
outputs: []
cwlVersion: v1.1
baseCommand:
- fsnviz
