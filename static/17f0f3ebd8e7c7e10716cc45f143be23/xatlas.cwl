class: CommandLineTool
id: xatlas.cwl
inputs:
- id: ref
  doc: Reference genome in FASTA format
  type: string
  inputBinding:
    prefix: --ref
- id: in
  doc: Sorted and indexed input BAM or CRAM file
  type: string
  inputBinding:
    prefix: --in
- id: sample_name
  doc: Sample name to use in the output VCF file
  type: string
  inputBinding:
    prefix: --sample-name
- id: prefix
  doc: Output VCF file prefix
  type: string
  inputBinding:
    prefix: --prefix
- id: multithread
  doc: Read alignment file and process records in separate threads
  type: boolean
  inputBinding:
    prefix: --multithread
- id: num_hts_threads
  doc: Number of HTSlib decompression threads to spawn
  type: string
  inputBinding:
    prefix: --num-hts-threads
- id: capture_bed
  doc: BED file of regions to process
  type: string
  inputBinding:
    prefix: --capture-bed
- id: min_p_value
  doc: Minimum logit P-value to report variants
  type: boolean
  inputBinding:
    prefix: --min-p-value
- id: min_snp_mapq
  doc: Minimum read mapping quality for calling SNPs
  type: string
  inputBinding:
    prefix: --min-snp-mapq
- id: min_in_del_mapq
  doc: Minimum read mapping quality for calling indels
  type: string
  inputBinding:
    prefix: --min-indel-mapq
- id: max_coverage
  doc: Maximum coverage for calling variants normally
  type: string
  inputBinding:
    prefix: --max-coverage
- id: block_abs_lim
  doc: gVCF non-variant block absolute range limit
  type: string
  inputBinding:
    prefix: --block-abs-lim
- id: block_rel_lim
  doc: gVCF non-variant block relative range limit coefficient
  type: string
  inputBinding:
    prefix: --block-rel-lim
- id: gvc_f
  doc: Include non-variant gVCF blocks in output VCF file
  type: boolean
  inputBinding:
    prefix: --gvcf
- id: bg_zf
  doc: Write output in bgzip-compressed VCF format
  type: boolean
  inputBinding:
    prefix: --bgzf
- id: snp_log_it_params
  doc: File with intercept and coefficients for SNP logit model
  type: File
  inputBinding:
    prefix: --snp-logit-params
- id: in_del_log_it_params
  doc: File with intercept and coefficients for indel logit model
  type: File
  inputBinding:
    prefix: --indel-logit-params
- id: enable_strand_filter
  doc: Enable SNP filter for single-strandedness
  type: boolean
  inputBinding:
    prefix: --enable-strand-filter
outputs: []
cwlVersion: v1.1
baseCommand:
- xatlas
