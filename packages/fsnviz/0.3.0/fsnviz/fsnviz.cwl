class: CommandLineTool
id: ../../../fsnviz.cwl
inputs:
- id: in_out_dir
  doc: 'Output directory. Default: current run'
  type: Directory
  inputBinding:
    prefix: --out-dir
- id: in_karyotype
  doc: "[human.hg19|human.hg38]\nKaryotype to use. Must be supported by\ncircos. If\
    \ the `--karyotype-file` parameter\nis defined, this parameter is ignored.\nDefault:\
    \ human.hg19."
  type: boolean
  inputBinding:
    prefix: --karyotype
- id: in_circo_s_conf
  doc: "Circos configuration file. If not supplied,\nfsnviz generates a default one."
  type: File
  inputBinding:
    prefix: --circos-conf
- id: in_png
  doc: '/ --no-png                Whether to create PNG plots or not. Default:'
  type: boolean
  inputBinding:
    prefix: --png
- id: in_circo_s_exe
  doc: "Circos executable. Default: circos (the one\naccessible via PATH)."
  type: File
  inputBinding:
    prefix: --circos-exe
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: 'Output directory. Default: current run'
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- fsnviz
