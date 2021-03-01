class: CommandLineTool
id: SAGE.cwl
inputs:
- id: in_known_hotspots
  doc: Tab separated file of known hotspot
  type: File?
  inputBinding:
    prefix: -known_hotspots
- id: in_min_base_quality
  doc: "Minimum quality for a base to be\nconsidered [13]"
  type: long?
  inputBinding:
    prefix: -min_base_quality
- id: in_min_in_del_quality
  doc: "Low confidence filtering minimum\nindel quality [150]"
  type: long?
  inputBinding:
    prefix: -min_indel_quality
- id: in_min_in_del_vaf
  doc: "Low confidence filtering minimum\nindel VAF [0.02]"
  type: double?
  inputBinding:
    prefix: -min_indel_vaf
- id: in_min_mapping_quality
  doc: "Minimum mapping quality for an\nalignment to be used [1]"
  type: long?
  inputBinding:
    prefix: -min_mapping_quality
- id: in_min_snv_quality
  doc: "Low confidence filtering minimum\nSNV/MNV quality [100]"
  type: long?
  inputBinding:
    prefix: -min_snv_quality
- id: in_min_snv_vaf
  doc: "Low confidence filtering minimum\nSNV/MNV VAF [0.005]"
  type: double?
  inputBinding:
    prefix: -min_snv_vaf
- id: in_min_tumor_reads
  doc: "Low confidence filtering minimum\ntumor reads [2]"
  type: long?
  inputBinding:
    prefix: -min_tumor_reads
- id: in_out
  doc: Output VCF file to write. Gz
  type: File?
  inputBinding:
    prefix: -out
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
- id: in_sage_hotspot_application
  doc: "-coding_regions <arg>                Coding regions bed file to search\nfor\
    \ inframe indels"
  type: string
  inputBinding:
    position: 0
- id: in_locations
  doc: -max_het_binomial_likelihood <arg>   Up to 1 read of support for the ALT
  type: string
  inputBinding:
    position: 1
- id: in_supported_dot
  doc: -ref_genome <arg>                    Path to the ref genome fasta file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output VCF file to write. Gz
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- SAGE
