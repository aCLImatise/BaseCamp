#!/usr/bin/env cwl-runner

baseCommand:
- run_metasv.py
class: CommandLineTool
cwlVersion: v1.0
id: run_metasv.py
inputs:
- doc: 'VCF file or dir for gatk VCFs (default: [])'
  id: g_atk_vcf
  inputBinding:
    prefix: --gatk_vcf
  type:
    items: File
    type: array
- doc: 'VCF file or dir for Manta VCFs (default: [])'
  id: manta_vcf
  inputBinding:
    prefix: --manta_vcf
  type:
    items: string
    type: array
- doc: 'VCF file or dir for Lumpy VCFs (default: [])'
  id: lumpy_vcf
  inputBinding:
    prefix: --lumpy_vcf
  type:
    items: string
    type: array
- doc: 'VCF file or dir for CNVkit VCFs (default: [])'
  id: cnv_kit_vcf
  inputBinding:
    prefix: --cnvkit_vcf
  type:
    items: string
    type: array
- doc: 'VCF file or dir for WHAM VCFs (default: [])'
  id: wham_vcf
  inputBinding:
    prefix: --wham_vcf
  type:
    items: string
    type: array
- doc: 'Mean read length (default: 100)'
  id: mean_read_length
  inputBinding:
    prefix: --mean_read_length
  type: string
- doc: 'Reference file (default: None)'
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: 'Chromosome list to process. If unspecified, then all chromosomes will be considered.
    (default: [])'
  id: chromosomes
  inputBinding:
    prefix: --chromosomes
  type:
    items: string
    type: array
- doc: 'Gap bed file (default: None)'
  id: gaps
  inputBinding:
    prefix: --gaps
  type: string
- doc: 'Filter out gaps (default: False)'
  id: filter_gaps
  inputBinding:
    prefix: --filter_gaps
  type: boolean
- doc: 'Keep only the major contigs + MT (default: False)'
  id: keep_standard_contigs
  inputBinding:
    prefix: --keep_standard_contigs
  type: boolean
- doc: 'BAMs (default: [])'
  id: bams
  inputBinding:
    prefix: --bams
  type:
    items: string
    type: array
- doc: 'Insert size mean (default: 350.0)'
  id: i_size_mean
  inputBinding:
    prefix: --isize_mean
  type: string
- doc: 'Insert size standard deviation (default: 50.0)'
  id: i_size_sd
  inputBinding:
    prefix: --isize_sd
  type: string
- doc: 'Wiggle for interval overlap (default: 100)'
  id: wiggle
  inputBinding:
    prefix: --wiggle
  type: string
- doc: 'Wiggle for insertions, overides wiggle (default: 100)'
  id: ins_wiggle
  inputBinding:
    prefix: --inswiggle
  type: string
- doc: 'Minimum length acceptable to be an SV (default: 50)'
  id: mins_v_len
  inputBinding:
    prefix: --minsvlen
  type: long
- doc: 'Maximum length SV to report (default: 1000000)'
  id: max_sv_len
  inputBinding:
    prefix: --maxsvlen
  type: long
- doc: 'Reciprocal overlap ratio (default: 0.5)'
  id: overlap_ratio
  inputBinding:
    prefix: --overlap_ratio
  type: string
- doc: 'Minimum average base quality (default: 20)'
  id: min_avg_base_qual
  inputBinding:
    prefix: --min_avg_base_qual
  type: long
- doc: 'Minimum MAPQ (default: 5)'
  id: min_mapq
  inputBinding:
    prefix: --min_mapq
  type: long
- doc: 'Minimum soft-clip (default: 20)'
  id: min_soft_clip
  inputBinding:
    prefix: --min_soft_clip
  type: long
- doc: 'Maximum number of edits (default: 10)'
  id: max_nm
  inputBinding:
    prefix: --max_nm
  type: long
- doc: 'Mininum number of matches (default: 50)'
  id: min_matches
  inputBinding:
    prefix: --min_matches
  type: long
- doc: 'Minimum read support for calling insertions using soft-clips (including neighbors)
    (default: 15)'
  id: min_support_ins
  inputBinding:
    prefix: --min_support_ins
  type: long
- doc: 'Minimum fraction of reads supporting insertion using soft-clips (including
    neighbors) (default: 0.05)'
  id: min_support_frac_ins
  inputBinding:
    prefix: --min_support_frac_ins
  type: long
- doc: 'Maximum number of insertion intervals to generate (default: 10000)'
  id: max_ins_intervals
  inputBinding:
    prefix: --max_ins_intervals
  type: long
- doc: 'Mean read coverage (default: 50)'
  id: mean_read_coverage
  inputBinding:
    prefix: --mean_read_coverage
  type: string
- doc: 'Minimum read coverage around the insertion breakpoint. (default: 0.5)'
  id: min_ins_cov_frac
  inputBinding:
    prefix: --min_ins_cov_frac
  type: long
- doc: 'Maximum read coverage around the insertion breakpoint. (default: 1.5)'
  id: max_ins_cov_frac
  inputBinding:
    prefix: --max_ins_cov_frac
  type: long
- doc: 'Control degree of incorporation of breakpoints from other methods. (default:
    5)'
  id: sc_other_scale
  inputBinding:
    prefix: --sc_other_scale
  type: string
- doc: 'Maximum number of pairs to extract for assembly (default: 10000)'
  id: extraction_max_read_pairs
  inputBinding:
    prefix: --extraction_max_read_pairs
  type: string
- doc: 'Maximum SV length for assembly (default: 50000)'
  id: spades_max_interval_size
  inputBinding:
    prefix: --spades_max_interval_size
  type: string
- doc: 'Skip assembly if more than this many tools support a call (default 1) (default:
    1)'
  id: assembly_max_tools
  inputBinding:
    prefix: --assembly_max_tools
  type: string
- doc: 'Padding base pairs to use for assembling breakpoint with Spades and AGE (default:
    500)'
  id: assembly_pad
  inputBinding:
    prefix: --assembly_pad
  type: string
- doc: 'Abort on SPAdes failure (default: False)'
  id: stop_spades_on_fail
  inputBinding:
    prefix: --stop_spades_on_fail
  type: boolean
- doc: 'Path to AGE executable (default: None)'
  id: age
  inputBinding:
    prefix: --age
  type: string
- doc: 'Maximum time (in seconds) for running AGE on an assembled contig (default:
    300)'
  id: age_timeout
  inputBinding:
    prefix: --age_timeout
  type: string
- doc: 'Minimum length of inversion sub-alginment (default: 50)'
  id: min_in_v_sub_align_len
  inputBinding:
    prefix: --min_inv_subalign_len
  type: long
- doc: 'Minimum length of deletion sub-alginment (default: 50)'
  id: min_del_sub_align_len
  inputBinding:
    prefix: --min_del_subalign_len
  type: long
- doc: 'Window size for AGE to merge nearby breakpoints (default: 20)'
  id: age_window
  inputBinding:
    prefix: --age_window
  type: string
- doc: 'Use soft-clips for improving breakpoint detection (default: False)'
  id: boost_sc
  inputBinding:
    prefix: --boost_sc
  type: boolean
- doc: 'Window for genotyping (default: 100)'
  id: gt_window
  inputBinding:
    prefix: --gt_window
  type: string
- doc: 'Min. fraction of reads supporting reference for genotyping (default: 0.05)'
  id: gt_normal_frac
  inputBinding:
    prefix: --gt_normal_frac
  type: string
- doc: 'Enable output of merged SVs for individual tools (default: False)'
  id: enable_per_tool_output
  inputBinding:
    prefix: --enable_per_tool_output
  type: boolean
- doc: 'Scratch directory for working (default: work)'
  id: workdir
  inputBinding:
    prefix: --workdir
  type: string
- doc: 'Number of threads to use (default: 1)'
  id: num_threads
  inputBinding:
    prefix: --num_threads
  type: string
- doc: 'Output directory (default: None)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
