class: CommandLineTool
id: varcall.cwl
inputs:
- id: in_calculate_statistics
  doc: Calculate statistics
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_version_calculate_variants
  doc: '|version  Calculate variants bases on supplied parameters (see -S)'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_reference_fasta_required
  doc: Reference fasta (required if using bams, ignored otherwise)
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_min_locii_depth
  doc: Min locii depth (1)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_min_allele_depth
  doc: Min allele depth (2)
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_min_allele_pct
  doc: Min allele pct by quality (0)
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_min_qual
  doc: Min qual (3)
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_min_mapping_quality
  doc: Min mapping quality (0)
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_min_pct_balance
  doc: Min pct balance (strand/total) (0)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_max_duplicate_read
  doc: Max duplicate read fraction (depth/length per position) (1)
  type: double?
  inputBinding:
    prefix: -D
- id: in_minimum_diversity_cv
  doc: Minimum diversity (CV from optimal depth) (0.25)
  type: double?
  inputBinding:
    prefix: -d
- id: in_minimum_agreement_cv
  doc: Minimum agreement (Weighted CV of positional variation) (0.25)
  type: double?
  inputBinding:
    prefix: -G
- id: in_zero_filters_set
  doc: Zero out all filters, set e-value filter to 1, report everything
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_running_bam_turn
  doc: If running from a BAM, turn off BAQ correction (false)
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_homopolymer_repeat_indel
  doc: Homopolymer repeat indel filtering (8)
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_alpha_filter_use
  doc: Alpha filter to use, requires -l or -S (.05)
  type: double?
  inputBinding:
    prefix: -e
- id: in_global_minimum_error
  doc: 'Global minimum error rate (default: assume phred is ok)'
  type: double?
  inputBinding:
    prefix: -g
- id: in_number_locii_mil
  doc: Number of locii in total pileup used for bonferroni (1 mil)
  type: long?
  inputBinding:
    prefix: -l
- id: in_pos_output_pos
  doc: :POS  Output this pos only, then quit
  type: string?
  inputBinding:
    prefix: -x
- id: in_read_statistics_params
  doc: Read in statistics and params from a previous run with -s (do this!)
  type: File?
  inputBinding:
    prefix: -S
- id: in_calculate_intarget_stats
  doc: Calculate in-target stats using the annotation file (requires -o)
  type: File?
  inputBinding:
    prefix: -A
- id: in_output_prefix_works
  doc: Output prefix (works with -s or -v)
  type: string?
  inputBinding:
    prefix: -o
- id: in_list_output_vcf
  doc: List of file types to output (var, varsum, eav, vcf)
  type: File?
  inputBinding:
    prefix: -F
- id: in_pcr_an_not
  doc: BED      Only include reads adhering to the expected amplicons
  type: boolean?
  inputBinding:
    prefix: --pcr-annot
- id: in_stranded
  doc: TYPE     Can be FR (the default), FF, FR.  Used with pcr-annot
  type: boolean?
  inputBinding:
    prefix: --stranded
- id: in_diversity
  doc: '|d FLOAT    Alias for -d'
  type: boolean?
  inputBinding:
    prefix: --diversity
- id: in_agreement
  doc: '|G FLOAT    Alias for -G'
  type: boolean?
  inputBinding:
    prefix: --agreement
- id: in_no_indels
  doc: Ignore all indels
  type: boolean?
  inputBinding:
    prefix: --no-indels
- id: in_prefix_dot_var
  doc: Variant calls in tab delimited 'varcall' format
  type: string
  inputBinding:
    position: 0
- id: in_prefix_do_tea_v
  doc: Variant calls in tab delimited 'ea-var' format
  type: string
  inputBinding:
    position: 1
- id: in_prefix_dot_cse
  doc: Variant calls in tab delimited 'varprowl' format
  type: string
  inputBinding:
    position: 2
- id: in_prefix_dot_vcf
  doc: Variant calls, in vcf format
  type: string
  inputBinding:
    position: 3
- id: in_prefix_dot_var_sum
  doc: Summary of variant calls
  type: string
  inputBinding:
    position: 4
- id: in_prefix_dot_tgt_dot_var
  doc: On-target version of .var
  type: string
  inputBinding:
    position: 5
- id: in_prefix_dot_tgt_dot_cse
  doc: On-target version of .cse
  type: string
  inputBinding:
    position: 6
- id: in_prefix_dot_tgt_dot_var_sum
  doc: On-target version of .varsum
  type: string
  inputBinding:
    position: 7
- id: in_prefix_dot_stats
  doc: Stats output
  type: string
  inputBinding:
    position: 0
- id: in_prefix_dot_noise
  doc: Non-reference, non-homozygous allele summary
  type: string
  inputBinding:
    position: 1
- id: in_prefix_do_tx_noise
  doc: Like noise, but with context-specific rates
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_list_output_vcf
  doc: List of file types to output (var, varsum, eav, vcf)
  type: File?
  outputBinding:
    glob: $(inputs.in_list_output_vcf)
hints: []
cwlVersion: v1.1
baseCommand:
- varcall
