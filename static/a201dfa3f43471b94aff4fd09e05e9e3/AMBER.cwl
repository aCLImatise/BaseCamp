class: CommandLineTool
id: AMBER.cwl
inputs:
- id: loci
  doc: Path to BAF loci vcf file
  type: string
  inputBinding:
    prefix: -loci
- id: max_depth_percent
  doc: Min percentage of median depth [1.5]
  type: string
  inputBinding:
    prefix: -max_depth_percent
- id: max_het_af_percent
  doc: Max heterozygous AF% [0.65]
  type: string
  inputBinding:
    prefix: -max_het_af_percent
- id: min_base_quality
  doc: Minimum quality for a base to be considered [13]
  type: string
  inputBinding:
    prefix: -min_base_quality
- id: min_depth_percent
  doc: Max percentage of median depth [0.5]
  type: string
  inputBinding:
    prefix: -min_depth_percent
- id: min_het_af_percent
  doc: Min heterozygous AF% [0.4]
  type: string
  inputBinding:
    prefix: -min_het_af_percent
- id: min_mapping_quality
  doc: Minimum mapping quality for an alignment to be used [1]
  type: string
  inputBinding:
    prefix: -min_mapping_quality
- id: output_dir
  doc: Output directory
  type: string
  inputBinding:
    prefix: -output_dir
- id: ref_genome
  doc: Path to the ref genome fasta file
  type: string
  inputBinding:
    prefix: -ref_genome
- id: reference
  doc: Name of reference sample
  type: string
  inputBinding:
    prefix: -reference
- id: reference_bam
  doc: Path to reference bam file
  type: string
  inputBinding:
    prefix: -reference_bam
- id: threads
  doc: Number of threads [1]
  type: string
  inputBinding:
    prefix: -threads
- id: tumor
  doc: Name of tumor sample
  type: string
  inputBinding:
    prefix: -tumor
- id: tumor_bam
  doc: Path to tumor bam file
  type: string
  inputBinding:
    prefix: -tumor_bam
- id: tumor_only
  doc: Tumor only mode
  type: boolean
  inputBinding:
    prefix: -tumor_only
- id: tumor_only_min_support
  doc: Min VAF in ref and alt in tumor only mode [2]
  type: string
  inputBinding:
    prefix: -tumor_only_min_support
- id: tumor_only_min_vaf
  doc: Min support in ref and alt in tumor only mode [0.05]
  type: string
  inputBinding:
    prefix: -tumor_only_min_vaf
- id: validation_stringency
  doc: 'SAM validation strategy: STRICT, SILENT, LENIENT [STRICT]'
  type: string
  inputBinding:
    prefix: -validation_stringency
outputs: []
cwlVersion: v1.1
baseCommand:
- AMBER
