class: CommandLineTool
id: AMBER.cwl
inputs:
- id: in_max_depth_percent
  doc: Min percentage of median depth [1.5]
  type: long?
  inputBinding:
    prefix: -max_depth_percent
- id: in_max_het_af_percent
  doc: Max heterozygous AF% [0.65]
  type: long?
  inputBinding:
    prefix: -max_het_af_percent
- id: in_min_base_quality
  doc: "Minimum quality for a base to be\nconsidered [13]"
  type: long?
  inputBinding:
    prefix: -min_base_quality
- id: in_min_depth_percent
  doc: Max percentage of median depth [0.5]
  type: long?
  inputBinding:
    prefix: -min_depth_percent
- id: in_min_het_af_percent
  doc: Min heterozygous AF% [0.4]
  type: long?
  inputBinding:
    prefix: -min_het_af_percent
- id: in_min_mapping_quality
  doc: "Minimum mapping quality for an alignment\nto be used [1]"
  type: long?
  inputBinding:
    prefix: -min_mapping_quality
- id: in_output_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: -output_dir
- id: in_ref_genome
  doc: Path to the ref genome fasta file
  type: File?
  inputBinding:
    prefix: -ref_genome
- id: in_reference
  doc: Name of reference sample
  type: string?
  inputBinding:
    prefix: -reference
- id: in_reference_bam
  doc: Path to reference bam file
  type: File?
  inputBinding:
    prefix: -reference_bam
- id: in_threads
  doc: Number of threads [1]
  type: long?
  inputBinding:
    prefix: -threads
- id: in_tumor
  doc: Name of tumor sample
  type: string?
  inputBinding:
    prefix: -tumor
- id: in_tumor_bam
  doc: Path to tumor bam file
  type: File?
  inputBinding:
    prefix: -tumor_bam
- id: in_tumor_only
  doc: Tumor only mode
  type: boolean?
  inputBinding:
    prefix: -tumor_only
- id: in_tumor_only_min_support
  doc: "Min VAF in ref and alt in tumor only mode\n[2]"
  type: long?
  inputBinding:
    prefix: -tumor_only_min_support
- id: in_tumor_only_min_vaf
  doc: "Min support in ref and alt in tumor only\nmode [0.05]"
  type: long?
  inputBinding:
    prefix: -tumor_only_min_vaf
- id: in_validation_stringency
  doc: "SAM validation strategy: STRICT, SILENT,\nLENIENT [STRICT]\n"
  type: string?
  inputBinding:
    prefix: -validation_stringency
- id: in_amber_application
  doc: -loci <arg>                     Path to BAF loci vcf file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hmftools-amber:3.5--0
cwlVersion: v1.1
baseCommand:
- AMBER
