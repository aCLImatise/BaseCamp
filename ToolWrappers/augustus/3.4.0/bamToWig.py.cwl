class: CommandLineTool
id: bamToWig.py.cwl
inputs:
- id: in_bam_file
  doc: Input file in Bam format.
  type: File?
  inputBinding:
    prefix: --bamFile
- id: in_genome_file
  doc: Input genome file in FASTA format.
  type: File?
  inputBinding:
    prefix: --genomeFile
- id: in_outfile
  doc: Output file in wiggle format.
  type: File?
  inputBinding:
    prefix: --outFile
- id: in_sam_tools_path
  doc: "Path to samtools executable, e.g. '/usr/bin'.\n"
  type: File?
  inputBinding:
    prefix: --SAMTOOLS_PATH
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Output file in wiggle format.
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- bamToWig.py
