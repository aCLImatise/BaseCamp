class: CommandLineTool
id: PlotMetageneAnalysisForTheWholeRegions.cwl
inputs:
- id: in_input
  doc: "Input file in txt format.And the files have N columns,\nmeaning N samples\
    \ and have total bins rows.\n[FiveUTR+CDS+ThreeUTR]"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Prefix of output files.[required]
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
- id: in_format
  doc: Output file format,'pdf','png' or 'jpg'. default=pdf
  type: File?
  inputBinding:
    prefix: --format
- id: in_bins
  doc: "Bins to scale the transcript length.e.g.'15,90,60'.\nbins must be separated\
    \ by comma, namely\n'5UTRBins,CDSBins,3UTRBins'. default=15,90,60"
  type: long?
  inputBinding:
    prefix: --bins
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
  doc: "plot all samples or just mean samples [all or mean].If\nchoose 'all',output\
    \ all samples as well as mean\nsamples, else just mean samples.default=all"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_xlabel_loc
  doc: "Location of xlabel. Used to control the yaxis location\nof xlabel. default=none\n"
  type: string?
  inputBinding:
    prefix: --xlabel-loc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format
  doc: Output file format,'pdf','png' or 'jpg'. default=pdf
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- PlotMetageneAnalysisForTheWholeRegions
