class: CommandLineTool
id: pan_genome_core_alignment.cwl
inputs:
- id: in_output_filename
  doc: output filename [core_gene_alignment.aln]
  type: File?
  inputBinding:
    prefix: -o
- id: in_cd
  doc: percentage of isolates a gene must be in to be core [99]
  type: double?
  inputBinding:
    prefix: -cd
- id: in_directory_containing_gene
  doc: directory containing gene multi-FASTAs [pan_genome_sequences]
  type: Directory?
  inputBinding:
    prefix: -m
- id: in_gene_presence_absence
  doc: gene presence and absence spreadsheet [gene_presence_absence.csv]
  type: string?
  inputBinding:
    prefix: -s
- id: in_allow_paralogs
  doc: allow paralogs
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_delete_intermediate_files
  doc: dont delete intermediate files
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: output filename [core_gene_alignment.aln]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- pan_genome_core_alignment
