class: CommandLineTool
id: schavott.cwl
inputs:
- id: in_run_mode
  doc: Run scaffolding or assembly
  type: string?
  inputBinding:
    prefix: --run_mode
- id: in_scaffold_er
  doc: Which scaffolder to use.
  type: string?
  inputBinding:
    prefix: --scaffolder
- id: in_s_space_path
  doc: Path to SSPACE (Only for scaffolding)
  type: File?
  inputBinding:
    prefix: --sspace_path
- id: in_read_type
  doc: "Select input type: fastq, fast5 or fasta, this is also\nthe search pattern\
    \ for shavott (*.read_type)"
  type: string?
  inputBinding:
    prefix: --read_type
- id: in_min_read_length
  doc: Minimum read length from MinION to use.
  type: long?
  inputBinding:
    prefix: --min_read_length
- id: in_min_quality
  doc: Minimum quality for reads from MinION to use.
  type: long?
  inputBinding:
    prefix: --min_quality
- id: in_watch
  doc: Directory to watch for fast5 files
  type: Directory?
  inputBinding:
    prefix: --watch
- id: in_contig_file
  doc: Path to contig file (Only for scaffolding)
  type: File?
  inputBinding:
    prefix: --contig_file
- id: in_trigger_mode
  doc: Use timer or read count. [reads]
  type: string?
  inputBinding:
    prefix: --trigger_mode
- id: in_skip
  doc: Skips the first j read of the sequencing
  type: string?
  inputBinding:
    prefix: --skip
- id: in_intensity
  doc: "How often the scaffolding process should run. If run\nmode is set to reads,\
    \ scaffolding will run every i:th\nread. If run mode is time, scaffolding will\
    \ run every\ni:th second. [100 reads]"
  type: long?
  inputBinding:
    prefix: --intensity
- id: in_plot
  doc: Plot result in web-browser
  type: boolean?
  inputBinding:
    prefix: --plot
- id: in_output
  doc: "Set output filename. (Defaut: schavott)\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Set output filename. (Defaut: schavott)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- schavott
