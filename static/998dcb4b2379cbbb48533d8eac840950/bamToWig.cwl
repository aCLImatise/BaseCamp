class: CommandLineTool
id: ../../../bamToWig.py.cwl
inputs:
- id: bam_file
  doc: Input file in Bam format.
  type: string
  inputBinding:
    prefix: --bamFile
- id: genome_file
  doc: Input genome file in FASTA format.
  type: string
  inputBinding:
    prefix: --genomeFile
- id: outfile
  doc: Output file in wiggle format.
  type: string
  inputBinding:
    prefix: --outFile
- id: sam_tools_path
  doc: Path to samtools executable, e.g. '/usr/bin'.
  type: string
  inputBinding:
    prefix: --SAMTOOLS_PATH
outputs: []
cwlVersion: v1.1
baseCommand:
- bamToWig.py
