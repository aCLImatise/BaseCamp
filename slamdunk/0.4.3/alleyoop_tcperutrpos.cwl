class: CommandLineTool
id: alleyoop_tcperutrpos.cwl
inputs:
- id: bam
  doc: Bam file(s)
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: Reference fasta file
  type: string
  inputBinding:
    prefix: --reference
- id: bed
  doc: BED file
  type: string
  inputBinding:
    prefix: --bed
- id: snp_directory
  doc: Directory containing SNP files.
  type: string
  inputBinding:
    prefix: --snp-directory
- id: vcf
  doc: Skip SNP step and provide custom variant file.
  type: string
  inputBinding:
    prefix: --vcf
- id: max_read_length
  doc: Max read length in BAM file
  type: long
  inputBinding:
    prefix: --max-read-length
- id: output_dir
  doc: Output directory for mapped BAM files.
  type: string
  inputBinding:
    prefix: --outputDir
- id: min_base_quality
  doc: 'Minimal base quality for SNPs (default: 27)'
  type: string
  inputBinding:
    prefix: --min-basequality
- id: threads
  doc: 'Thread number (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- alleyoop
- tcperutrpos
