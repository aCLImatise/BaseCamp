class: CommandLineTool
id: naive_variant_caller.py.cwl
inputs:
- id: bam
  doc: BAM filename, optionally index filename. Multiple allowed.
  type: string
  inputBinding:
    prefix: --bam
- id: index
  doc: optionally index filename. Multiple allowed.
  type: string
  inputBinding:
    prefix: --index
- id: output_vcf_filename
  doc: Output VCF filename
  type: string
  inputBinding:
    prefix: --output_vcf_filename
- id: reference_genome_filename
  doc: Input reference file
  type: string
  inputBinding:
    prefix: --reference_genome_filename
- id: variants_only
  doc: Report only sites with a possible variant allele.
  type: boolean
  inputBinding:
    prefix: --variants_only
- id: use_strand
  doc: Report counts by strand
  type: boolean
  inputBinding:
    prefix: --use_strand
- id: ploidy
  doc: Ploidy. Default=2.
  type: string
  inputBinding:
    prefix: --ploidy
- id: min_support_depth
  doc: Minimum number of reads needed to consider a REF/ALT. Default=0.
  type: long
  inputBinding:
    prefix: --min_support_depth
- id: min_base_quality
  doc: Minimum base quality.
  type: long
  inputBinding:
    prefix: --min_base_quality
- id: min_mapping_quality
  doc: Minimum mapping.
  type: long
  inputBinding:
    prefix: --min_mapping_quality
- id: coverage_d_type
  doc: dtype to use for coverage array
  type: string
  inputBinding:
    prefix: --coverage_dtype
- id: allow_out_of_bounds_positions
  doc: Allows out of bounds positions to not throw fatal errors
  type: boolean
  inputBinding:
    prefix: --allow_out_of_bounds_positions
- id: safe
  doc: Perform checks to prevent certain errors. Is slower.
  type: boolean
  inputBinding:
    prefix: --safe
- id: region
  doc: region. Either <chrom> or <chrom>:<start>-<end>, origin-0 half-open.
  type: string
  inputBinding:
    prefix: --region
- id: regions_filename
  doc: Regions filename. Three columns, origin-0 half-open. Extra columns ignored.
    Multiple allowed.
  type: string
  inputBinding:
    prefix: --regions_filename
- id: regions_file_columns
  doc: Columns in regions file for chrom,start,end. 0-based
  type: string
  inputBinding:
    prefix: --regions_file_columns
outputs: []
cwlVersion: v1.1
baseCommand:
- naive_variant_caller.py
