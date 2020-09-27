class: CommandLineTool
id: pathoscope_REP.cwl
inputs:
- id: in_sam_tools_home
  doc: "Full Path to samtools binary directory (Default: Uses\nsamtools in system\
    \ path)"
  type: File
  inputBinding:
    prefix: -samtoolsHome
- id: in_dbhost
  doc: "specify hostname running mysql if you want to use\nmysql instead of hash method\
    \ in mapping gi to taxonomy\nid"
  type: string
  inputBinding:
    prefix: -dbhost
- id: in_db_port
  doc: "provide mysql server port if different from default\n(3306)"
  type: long
  inputBinding:
    prefix: -dbport
- id: in_dbuser
  doc: user name to access mysql
  type: string
  inputBinding:
    prefix: -dbuser
- id: in_db_passwd
  doc: provide password associate with user
  type: string
  inputBinding:
    prefix: -dbpasswd
- id: in_db
  doc: 'mysql pathoscope database name (default: pathodb)'
  type: string
  inputBinding:
    prefix: -db
- id: in_outdir
  doc: Output Directory
  type: Directory
  inputBinding:
    prefix: -outDir
- id: in_contig
  doc: "Generate Contig Information (Needs samtools package\ninstalled)"
  type: boolean
  inputBinding:
    prefix: --contig
- id: in_sam_file
  doc: SAM Alignment file path
  type: File
  inputBinding:
    prefix: -samfile
- id: in_no_display_cut_off
  doc: "Do not cutoff display of genomes, even if it is\ninsignificant\n"
  type: boolean
  inputBinding:
    prefix: --noDisplayCutoff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output Directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- pathoscope
- REP
