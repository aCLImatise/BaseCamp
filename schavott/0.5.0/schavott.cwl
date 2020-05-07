class: CommandLineTool
id: schavott.cwl
inputs:
- id: run_mode
  doc: Run scaffolding or assembly
  type: string
  inputBinding:
    prefix: --run_mode
- id: scaffold_er
  doc: Which scaffolder to use.
  type: string
  inputBinding:
    prefix: --scaffolder
- id: s_space_path
  doc: Path to SSPACE (Only for scaffolding)
  type: string
  inputBinding:
    prefix: --sspace_path
- id: read_type
  doc: 'Select input type: fastq, fast5 or fasta, this is also the search pattern
    for shavott (*.read_type)'
  type: string
  inputBinding:
    prefix: --read_type
- id: min_read_length
  doc: Minimum read length from MinION to use.
  type: long
  inputBinding:
    prefix: --min_read_length
- id: min_quality
  doc: Minimum quality for reads from MinION to use.
  type: long
  inputBinding:
    prefix: --min_quality
- id: watch
  doc: Directory to watch for fast5 files
  type: string
  inputBinding:
    prefix: --watch
- id: contig_file
  doc: Path to contig file (Only for scaffolding)
  type: string
  inputBinding:
    prefix: --contig_file
- id: trigger_mode
  doc: Use timer or read count. [reads]
  type: string
  inputBinding:
    prefix: --trigger_mode
- id: skip
  doc: Skips the first j read of the sequencing
  type: string
  inputBinding:
    prefix: --skip
- id: intensity
  doc: How often the scaffolding process should run. If run mode is set to reads,
    scaffolding will run every i:th read. If run mode is time, scaffolding will run
    every i:th second. [100 reads]
  type: long
  inputBinding:
    prefix: --intensity
- id: plot
  doc: Plot result in web-browser
  type: boolean
  inputBinding:
    prefix: --plot
- id: output
  doc: 'Set output filename. (Defaut: schavott)'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- schavott
