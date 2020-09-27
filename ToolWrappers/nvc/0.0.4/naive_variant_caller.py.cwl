class: CommandLineTool
id: naive_variant_caller.py.cwl
inputs:
- id: in_bam
  doc: "BAM filename, optionally index filename. Multiple\nallowed."
  type: File
  inputBinding:
    prefix: --bam
- id: in_index
  doc: optionally index filename. Multiple allowed.
  type: File
  inputBinding:
    prefix: --index
- id: in_output_vcf_filename
  doc: Output VCF filename
  type: File
  inputBinding:
    prefix: --output_vcf_filename
- id: in_reference_genome_filename
  doc: Input reference file
  type: File
  inputBinding:
    prefix: --reference_genome_filename
- id: in_variants_only
  doc: Report only sites with a possible variant allele.
  type: boolean
  inputBinding:
    prefix: --variants_only
- id: in_use_strand
  doc: Report counts by strand
  type: boolean
  inputBinding:
    prefix: --use_strand
- id: in_ploidy
  doc: Ploidy. Default=2.
  type: long
  inputBinding:
    prefix: --ploidy
- id: in_min_support_depth
  doc: "Minimum number of reads needed to consider a REF/ALT.\nDefault=0."
  type: long
  inputBinding:
    prefix: --min_support_depth
- id: in_min_base_quality
  doc: Minimum base quality.
  type: long
  inputBinding:
    prefix: --min_base_quality
- id: in_min_mapping_quality
  doc: Minimum mapping.
  type: long
  inputBinding:
    prefix: --min_mapping_quality
- id: in_coverage_d_type
  doc: dtype to use for coverage array
  type: string
  inputBinding:
    prefix: --coverage_dtype
- id: in_allow_out_of_bounds_positions
  doc: "Allows out of bounds positions to not throw fatal\nerrors"
  type: boolean
  inputBinding:
    prefix: --allow_out_of_bounds_positions
- id: in_safe
  doc: Perform checks to prevent certain errors. Is slower.
  type: boolean
  inputBinding:
    prefix: --safe
- id: in_region
  doc: "region. Either <chrom> or <chrom>:<start>-<end>,\norigin-0 half-open."
  type: long
  inputBinding:
    prefix: --region
- id: in_regions_filename
  doc: "Regions filename. Three columns, origin-0 half-open.\nExtra columns ignored.\
    \ Multiple allowed."
  type: File
  inputBinding:
    prefix: --regions_filename
- id: in_regions_file_columns
  doc: Columns in regions file for chrom,start,end. 0-based
  type: File
  inputBinding:
    prefix: --regions_file_columns
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf_filename
  doc: Output VCF filename
  type: File
  outputBinding:
    glob: $(inputs.in_output_vcf_filename)
cwlVersion: v1.1
baseCommand:
- naive_variant_caller.py
