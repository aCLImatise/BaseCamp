class: CommandLineTool
id: combine_count_tables.py.cwl
inputs:
- id: in_design
  doc: "Alignment Design File containing fastq fqNames and\nsampleIDs [Required]"
  type: File?
  inputBinding:
    prefix: --design
- id: in_sim
  doc: Select if this is a simulation dataset
  type: boolean?
  inputBinding:
    prefix: --sim
- id: in_bed
  doc: Full path to the bed file [Required]
  type: File?
  inputBinding:
    prefix: --bed
- id: in_collection_identifiers
  doc: Input original names [Required]
  type: string?
  inputBinding:
    prefix: --collection_identifiers
- id: in_collection_filenames
  doc: Input galaxy names [Required]
  type: string?
  inputBinding:
    prefix: --collection_filenames
- id: in_begin
  doc: Start point in design file [Optional]
  type: File?
  inputBinding:
    prefix: --begin
- id: in_end
  doc: End point in design file [Optional]
  type: File?
  inputBinding:
    prefix: --end
- id: in_out_design
  doc: "Output design file name with full path in galaxy\n[Required]"
  type: File?
  inputBinding:
    prefix: --outdesign
- id: in_outdir
  doc: "Output directory for summed count table files\n[Required]\n"
  type: Directory?
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_design
  doc: "Output design file name with full path in galaxy\n[Required]"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_design)
- id: out_outdir
  doc: "Output directory for summed count table files\n[Required]\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bayesase:21.1.13.1--py_0
cwlVersion: v1.1
baseCommand:
- combine_count_tables.py
