class: CommandLineTool
id: convert_regions.cwl
inputs:
- id: in_output_format
  doc: "Output format (bed (BED), bigwig (BigWig), bw\n(BigWig), gff (GFF)"
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_chromosome_sizes
  doc: "Genome identifier (mm10, hg38, ...) or chrom.sizes\nfile"
  type: File?
  inputBinding:
    prefix: --chromosome-sizes
- id: in_subset
  doc: "Regions subset identifier of the form\n<chr>[:<start>-<end>]"
  type: string?
  inputBinding:
    prefix: --subset
- id: in_force_overwrite
  doc: Force overwriting of existing output file
  type: File?
  inputBinding:
    prefix: --force-overwrite
- id: in_work_in_tmp
  doc: Work in temporary directory
  type: boolean?
  inputBinding:
    prefix: --work-in-tmp
- id: in_input
  doc: Input file
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite
  doc: Force overwriting of existing output file
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genomic_regions:0.0.9--py_0
cwlVersion: v1.1
baseCommand:
- convert-regions
