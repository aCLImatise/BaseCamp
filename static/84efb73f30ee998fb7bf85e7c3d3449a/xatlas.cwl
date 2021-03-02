class: CommandLineTool
id: xatlas.cwl
inputs:
- id: in_ref
  doc: Reference genome in FASTA format
  type: string?
  inputBinding:
    prefix: --ref
- id: in_in
  doc: Sorted and indexed input BAM or CRAM file
  type: File?
  inputBinding:
    prefix: --in
- id: in_sample_name
  doc: Sample name to use in the output VCF file
  type: File?
  inputBinding:
    prefix: --sample-name
- id: in_prefix
  doc: Output VCF file prefix
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_multithread
  doc: Read alignment file and process records in separate threads
  type: boolean?
  inputBinding:
    prefix: --multithread
- id: in_num_hts_threads
  doc: Number of HTSlib decompression threads to spawn
  type: long?
  inputBinding:
    prefix: --num-hts-threads
- id: in_capture_bed
  doc: BED file of regions to process
  type: File?
  inputBinding:
    prefix: --capture-bed
- id: in_min_p_value
  doc: Minimum logit P-value to report variants
  type: boolean?
  inputBinding:
    prefix: --min-p-value
- id: in_min_snp_mapq
  doc: Minimum read mapping quality for calling SNPs
  type: long?
  inputBinding:
    prefix: --min-snp-mapq
- id: in_min_in_del_mapq
  doc: Minimum read mapping quality for calling indels
  type: long?
  inputBinding:
    prefix: --min-indel-mapq
- id: in_max_coverage
  doc: Maximum coverage for calling variants normally
  type: long?
  inputBinding:
    prefix: --max-coverage
- id: in_block_abs_lim
  doc: gVCF non-variant block absolute range limit
  type: string?
  inputBinding:
    prefix: --block-abs-lim
- id: in_block_rel_lim
  doc: gVCF non-variant block relative range limit coefficient
  type: string?
  inputBinding:
    prefix: --block-rel-lim
- id: in_gvc_f
  doc: Include non-variant gVCF blocks in output VCF file
  type: File?
  inputBinding:
    prefix: --gvcf
- id: in_bg_zf
  doc: Write output in bgzip-compressed VCF format
  type: boolean?
  inputBinding:
    prefix: --bgzf
- id: in_snp_log_it_params
  doc: File with intercept and coefficients for SNP logit model
  type: File?
  inputBinding:
    prefix: --snp-logit-params
- id: in_in_del_log_it_params
  doc: File with intercept and coefficients for indel logit model
  type: File?
  inputBinding:
    prefix: --indel-logit-params
- id: in_enable_strand_filter
  doc: Enable SNP filter for single-strandedness
  type: boolean?
  inputBinding:
    prefix: --enable-strand-filter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sample_name
  doc: Sample name to use in the output VCF file
  type: File?
  outputBinding:
    glob: $(inputs.in_sample_name)
- id: out_prefix
  doc: Output VCF file prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_gvc_f
  doc: Include non-variant gVCF blocks in output VCF file
  type: File?
  outputBinding:
    glob: $(inputs.in_gvc_f)
hints: []
cwlVersion: v1.1
baseCommand:
- xatlas
