class: CommandLineTool
id: Smoother.cwl
inputs:
- id: in_v
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: in_syntax
  doc: strong syntax control in input files
  type: boolean
  inputBinding:
    prefix: -syntax
- id: in_verbose
  doc: verbose
  type: long
  inputBinding:
    prefix: -verbose
- id: in_s
  doc: no output to stdout
  type: boolean
  inputBinding:
    prefix: -s
- id: in_silent
  doc: no output to stdout
  type: long
  inputBinding:
    prefix: -silent
- id: in_bin
  doc: bin size for input averaging
  type: long
  inputBinding:
    prefix: -bin
- id: in_clear
  doc: force binary profile preparation
  type: long
  inputBinding:
    prefix: -clear
- id: in_force_profile_preparation
  doc: force  binary profile preparation
  type: boolean
  inputBinding:
    prefix: -c
- id: in_smooth_z
  doc: Z-Score for smoothed profile
  type: double
  inputBinding:
    prefix: -smoothZ
- id: in_cfg
  doc: config file
  type: File
  inputBinding:
    prefix: -cfg
- id: in_prof_path
  doc: path for binary profiles
  type: File
  inputBinding:
    prefix: -profPath
- id: in_track_path
  doc: path for tracks
  type: File
  inputBinding:
    prefix: -trackPath
- id: in_confounder
  doc: confounder filename
  type: File
  inputBinding:
    prefix: -confounder
- id: in_log
  doc: cumulative log-file
  type: File
  inputBinding:
    prefix: -log
- id: in_chrom
  doc: chromosome file
  type: File
  inputBinding:
    prefix: -chrom
- id: in_bufsize
  doc: Buffer Size
  type: long
  inputBinding:
    prefix: -BufSize
- id: in_bp_type
  doc: The value used as a score for BroadPeak input file
  type: File
  inputBinding:
    prefix: -bpType
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Smoother
