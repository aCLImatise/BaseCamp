class: CommandLineTool
id: SAGE.cwl
inputs:
- id: coding_regions
  doc: Coding regions bed file to search for inframe indels
  type: string
  inputBinding:
    prefix: -coding_regions
- id: known_hotspots
  doc: Tab separated file of known hotspot locations
  type: string
  inputBinding:
    prefix: -known_hotspots
- id: max_het_binomial_likelihood
  doc: Up to 1 read of support for the ALT in the reference is allowed if the binomial
    likelihood of observing the read (assuming a 50% VAF) is less than this parameter
    [0.01]
  type: string
  inputBinding:
    prefix: -max_het_binomial_likelihood
- id: min_base_quality
  doc: Minimum quality for a base to be considered [13]
  type: string
  inputBinding:
    prefix: -min_base_quality
- id: min_in_del_quality
  doc: Low confidence filtering minimum indel quality [150]
  type: string
  inputBinding:
    prefix: -min_indel_quality
- id: min_in_del_vaf
  doc: Low confidence filtering minimum indel VAF [0.02]
  type: string
  inputBinding:
    prefix: -min_indel_vaf
- id: min_mapping_quality
  doc: Minimum mapping quality for an alignment to be used [1]
  type: string
  inputBinding:
    prefix: -min_mapping_quality
- id: min_snv_quality
  doc: Low confidence filtering minimum SNV/MNV quality [100]
  type: string
  inputBinding:
    prefix: -min_snv_quality
- id: min_snv_vaf
  doc: Low confidence filtering minimum SNV/MNV VAF [0.005]
  type: string
  inputBinding:
    prefix: -min_snv_vaf
- id: min_tumor_reads
  doc: Low confidence filtering minimum tumor reads [2]
  type: string
  inputBinding:
    prefix: -min_tumor_reads
- id: out
  doc: Output VCF file to write. Gz supported.
  type: string
  inputBinding:
    prefix: -out
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
outputs: []
cwlVersion: v1.1
baseCommand:
- SAGE
