class: CommandLineTool
id: pathoscope_REP.cwl
inputs:
- id: sam_tools_home
  doc: 'Full Path to samtools binary directory (Default: Uses samtools in system path)'
  type: string
  inputBinding:
    prefix: -samtoolsHome
- id: dbhost
  doc: specify hostname running mysql if you want to use mysql instead of hash method
    in mapping gi to taxonomy id
  type: string
  inputBinding:
    prefix: -dbhost
- id: db_port
  doc: provide mysql server port if different from default (3306)
  type: string
  inputBinding:
    prefix: -dbport
- id: dbuser
  doc: user name to access mysql
  type: string
  inputBinding:
    prefix: -dbuser
- id: db_passwd
  doc: provide password associate with user
  type: string
  inputBinding:
    prefix: -dbpasswd
- id: db
  doc: 'mysql pathoscope database name (default: pathodb)'
  type: string
  inputBinding:
    prefix: -db
- id: outdir
  doc: Output Directory
  type: string
  inputBinding:
    prefix: -outDir
- id: contig
  doc: Generate Contig Information (Needs samtools package installed)
  type: boolean
  inputBinding:
    prefix: --contig
- id: sam_file
  doc: SAM Alignment file path
  type: string
  inputBinding:
    prefix: -samfile
- id: no_display_cut_off
  doc: Do not cutoff display of genomes, even if it is insignificant
  type: boolean
  inputBinding:
    prefix: --noDisplayCutoff
outputs: []
cwlVersion: v1.1
baseCommand:
- pathoscope
- REP
