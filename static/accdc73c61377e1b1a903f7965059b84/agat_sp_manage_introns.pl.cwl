class: CommandLineTool
id: agat_sp_manage_introns.pl.cwl
inputs:
- id: in_ref_file
  doc: "Input GTF/GFF file. You can use several input files by doing: -f\nfile1 -f\
    \ file2 -f file3"
  type: File?
  inputBinding:
    prefix: -reffile
- id: in_window
  doc: "It the number of break used within the histogram plot. By\ndefault it's 1000.\
    \ You can modify the value to get something\nmore or less precise."
  type: long?
  inputBinding:
    prefix: --window
- id: in_modify_x_values
  doc: "to modify the X values to calculate the percentage of the\nlongest introns\
    \ to remove. By default the value is 1 (We remove\n1 percent of the longest)."
  type: long?
  inputBinding:
    prefix: --p
- id: in_plot
  doc: Allows to create an histogram in pdf of intron sizes
  type: boolean?
  inputBinding:
    prefix: --plot
- id: in_agat_sp_manage_introns_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
- id: in_distribution_dot
  doc: --out, --output or -o
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_manage_introns.pl
