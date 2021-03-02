class: CommandLineTool
id: Lace.py.cwl
inputs:
- id: in_cores
  doc: "The number of cores you wish to run the job on\n(default = 1)"
  type: long?
  inputBinding:
    prefix: --cores
- id: in_alternate
  doc: "Create alternate annotations and create metrics on\nsuccess of SuperTranscript\
    \ Building"
  type: boolean?
  inputBinding:
    prefix: --alternate
- id: in_tidy
  doc: "Move intermediate fasta files into folder: SuperFiles\nafter running"
  type: boolean?
  inputBinding:
    prefix: --tidy
- id: in_max_tran
  doc: "Set a maximum for the number of transcripts from a\ncluster to be included\
    \ for building the\nSuperTranscript (default=50)."
  type: long?
  inputBinding:
    prefix: --maxTran
- id: in_output_dir
  doc: "Output Directory\n"
  type: Directory?
  inputBinding:
    prefix: --outputDir
- id: in_genome_file
  doc: The name of the fasta file containing all transcripts
  type: string
  inputBinding:
    position: 0
- id: in_cluster_file
  doc: "The name of the text file with the transcript to\ncluster mapping"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Output Directory\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- Lace.py
