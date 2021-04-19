class: CommandLineTool
id: ViewBS_MethHeatmap.cwl
inputs:
- id: in_verbose
  doc: '- Suppress extended information or not. [Default: TRUE]'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_region
  doc: "[required*]\n- regions you want to investigate."
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_sample
  doc: "[required]\n- Provide the sample information. [Format: methlationfile,samplename]"
  type: boolean?
  inputBinding:
    prefix: --sample
- id: in_merge
  doc: "[optional]\n- If --merge is provided (True), methylation level for different\
    \ context will be genrated in one file."
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_min_depth
  doc: "[optional]\n- Minimum read depth for calculating methylation level. [default:\
    \ 5]"
  type: boolean?
  inputBinding:
    prefix: --minDepth
- id: in_maxdepth
  doc: "[optional]\n- Maximum read depth for calculating methylation level. [default:\
    \ 10000]"
  type: boolean?
  inputBinding:
    prefix: --maxDepth
- id: in_cluster_rows
  doc: "[optional]\n- boolean values determining if rows should be clustered or hclust\
    \ object."
  type: boolean?
  inputBinding:
    prefix: --cluster_rows
- id: in_cluster_cols
  doc: "[optional]\n- boolean values determining if columns should be clustered or\
    \ hclust object."
  type: boolean?
  inputBinding:
    prefix: --cluster_cols
- id: in_outdir
  doc: "[optional]\n- Output folder. [Default: ./]"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: "[required]\n- Provide prefix for the output file. [Default: MethHeatmap]"
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_height
  doc: "[optional]\n- Height of PDF figure (Heatmap). Unit is cm. [Default: 10]"
  type: boolean?
  inputBinding:
    prefix: --height
- id: in_width
  doc: "[optional]\n- Width of PDF figure (Heatmap). Unit is cm. [Default: 10]"
  type: boolean?
  inputBinding:
    prefix: --width
- id: in_height_two
  doc: "[optional]\n- Height of PDF figure (Violin and boxplot). Unit is cm. [Default:\
    \ 10]"
  type: boolean?
  inputBinding:
    prefix: --height2
- id: in_width_two
  doc: "[optional]\n- Width of PDF figure (Violin and boxplot). Unit is cm. [Default:\
    \ 10]"
  type: boolean?
  inputBinding:
    prefix: --width2
- id: in_random_region
  doc: "[optional]\n- The number to select the regions randomly for the give list\
    \ of regions.\nWhen the given regions are too many, it may cause \"cannot allocate\n\
    vector of size\" when generating the heatmap. Then we randomly select\npart of\
    \ the data to generate the heatmap. [Default: 2000]\nIf ViewBS still \"cannot\
    \ allocate vector of size\", please select a smaller\nnumber.\n"
  type: boolean?
  inputBinding:
    prefix: --random_region
- id: in_violin_boxplot_dot
  doc: Required arguments
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "[optional]\n- Output folder. [Default: ./]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_prefix
  doc: "[required]\n- Provide prefix for the output file. [Default: MethHeatmap]"
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viewbs:0.1.10--pl5262h779adbc_0
cwlVersion: v1.1
baseCommand:
- ViewBS
- MethHeatmap
