class: CommandLineTool
id: cooltools_dump_cworld.cwl
inputs:
- id: in_c_world_type
  doc: "[matrix|tar]      The format of the CWorld output. 'matrix'\nconverts a single\
    \ .cool file into the\n.matrix.txt.gz tab-separated format. 'tar'\ndumps all specified\
    \ cooler files into a\nsingle .tar archive containing multiple\n.matrix.txt.gz\
    \ files (use to make multi-\nresolution archives).  [default: matrix]"
  type: File?
  inputBinding:
    prefix: --cworld-type
- id: in_region
  doc: "The coordinates of a genomic region to dump,\nin the UCSC format. If empty\
    \ (by default),\ndump a genome-wide matrix. This option can\nbe used only when\
    \ dumping a single cooler\nfile.  [default: ]"
  type: File?
  inputBinding:
    prefix: --region
- id: in_balancing_type
  doc: "[IC_unity|IC|raw]\nThe type of the matrix balancing. 'IC_unity'\n- iteratively\
    \ corrected for the total number\nof contacts per locus=1.0; 'IC' - same, but\n\
    preserving the average total number of\ncontacts; 'raw' - no balancing  [default:\n\
    IC_unity]"
  type: boolean?
  inputBinding:
    prefix: --balancing-type
- id: in_format_dot
  doc: 'COOL_PATHS : Paths to one or multiple .cool files OUT_PATH : Output CWorld'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_c_world_type
  doc: "[matrix|tar]      The format of the CWorld output. 'matrix'\nconverts a single\
    \ .cool file into the\n.matrix.txt.gz tab-separated format. 'tar'\ndumps all specified\
    \ cooler files into a\nsingle .tar archive containing multiple\n.matrix.txt.gz\
    \ files (use to make multi-\nresolution archives).  [default: matrix]"
  type: File?
  outputBinding:
    glob: $(inputs.in_c_world_type)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0
cwlVersion: v1.1
baseCommand:
- cooltools
- dump-cworld
