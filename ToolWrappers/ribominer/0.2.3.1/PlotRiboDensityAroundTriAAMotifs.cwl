class: CommandLineTool
id: PlotRiboDensityAroundTriAAMotifs.cwl
inputs:
- id: in_input
  doc: Input file in dataframe format (pd.DataFrame).
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output files
  type: string?
  inputBinding:
    prefix: --output
- id: in_group
  doc: "Group name of each group separated by comma. e.g. 'si-\ncontrol,si-eIF3e'"
  type: long?
  inputBinding:
    prefix: --group
- id: in_replicate
  doc: "Replicate name of each group separated by comma. e.g.\n'si_3e_1_80S,si_3e_2_80S__si_cttl_1_80S,si_ctrl_2_80S'"
  type: long?
  inputBinding:
    prefix: --replicate
- id: in_ymax
  doc: The max of ylim. default=none
  type: long?
  inputBinding:
    prefix: --ymax
- id: in_ymin
  doc: The min of ylim. default=none
  type: long?
  inputBinding:
    prefix: --ymin
- id: in_mode
  doc: "Control the mode for plot. if '--mode single', return\nthe plot of each samples;else\
    \ return the mean plot.\ndefault=mean.\n"
  type: string?
  inputBinding:
    prefix: --mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- PlotRiboDensityAroundTriAAMotifs
