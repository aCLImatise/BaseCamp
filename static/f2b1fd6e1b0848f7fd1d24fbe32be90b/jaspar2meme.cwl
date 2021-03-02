class: CommandLineTool
id: jaspar2meme.cwl
inputs:
- id: in_bundle
  doc: "read a single file containing many JASPAR\ncount matrices in 2014 or 2016\
    \ format with\ntheir names."
  type: boolean?
  inputBinding:
    prefix: -bundle
- id: in_pfm
  doc: "read JASPAR count files (.pfm);\ndefault: site files (.sites)"
  type: boolean?
  inputBinding:
    prefix: -pfm
- id: in_cm
  doc: "read count file with line labels 'A|' etc. (.cm);\ndefault: site files (.sites)"
  type: boolean?
  inputBinding:
    prefix: -cm
- id: in_numbers
  doc: use numbers instead of strings as motif names
  type: boolean?
  inputBinding:
    prefix: -numbers
- id: in_strands
  doc: "|2    print '+ -' '+' on the MEME strand line;\ndefault: 2 (prints '+ -')"
  type: long?
  inputBinding:
    prefix: -strands
- id: in_bg
  doc: file with background frequencies in MEME
  type: File?
  inputBinding:
    prefix: -bg
- id: in_b_file
  doc: '; default: uniform frequencies'
  type: string?
  inputBinding:
    prefix: -bfile
- id: in_pseudo
  doc: "add <A> times background frequency to\neach count when computing letter frequencies\n\
    default: 0"
  type: long?
  inputBinding:
    prefix: -pseudo
- id: in_log_odds
  doc: "print log-odds matrix as well as frequency matrix;\ndefault: frequency matrix\
    \ only"
  type: boolean?
  inputBinding:
    prefix: -logodds
- id: in_url
  doc: "website for the motif; The motif name\nis substituted for MOTIF_NAME;"
  type: string?
  inputBinding:
    prefix: -url
- id: in_jaspar_directory_vertical_line_pfm_bundle
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- jaspar2meme
