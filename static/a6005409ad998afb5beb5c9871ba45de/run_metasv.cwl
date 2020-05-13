class: CommandLineTool
id: run_metasv.py.cwl
inputs:
- id: g_atk_vcf
  doc: 'VCF file or dir for gatk VCFs (default: [])'
  type: File[]
  inputBinding:
    prefix: --gatk_vcf
- id: manta_vcf
  doc: 'VCF file or dir for Manta VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --manta_vcf
- id: lumpy_vcf
  doc: 'VCF file or dir for Lumpy VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --lumpy_vcf
- id: cnv_kit_vcf
  doc: 'VCF file or dir for CNVkit VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --cnvkit_vcf
- id: wham_vcf
  doc: 'VCF file or dir for WHAM VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --wham_vcf
- id: mean_read_length
  doc: 'Mean read length (default: 100)'
  type: string
  inputBinding:
    prefix: --mean_read_length
- id: reference
  doc: 'Reference file (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: chromosomes
  doc: 'Chromosome list to process. If unspecified, then all chromosomes will be considered.
    (default: [])'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: gaps
  doc: 'Gap bed file (default: None)'
  type: string
  inputBinding:
    prefix: --gaps
- id: filter_gaps
  doc: 'Filter out gaps (default: False)'
  type: boolean
  inputBinding:
    prefix: --filter_gaps
- id: keep_standard_contigs
  doc: 'Keep only the major contigs + MT (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_standard_contigs
- id: bams
  doc: 'BAMs (default: [])'
  type: string[]
  inputBinding:
    prefix: --bams
- id: i_size_mean
  doc: 'Insert size mean (default: 350.0)'
  type: string
  inputBinding:
    prefix: --isize_mean
- id: i_size_sd
  doc: 'Insert size standard deviation (default: 50.0)'
  type: string
  inputBinding:
    prefix: --isize_sd
- id: wiggle
  doc: 'Wiggle for interval overlap (default: 100)'
  type: string
  inputBinding:
    prefix: --wiggle
- id: ins_wiggle
  doc: 'Wiggle for insertions, overides wiggle (default: 100)'
  type: string
  inputBinding:
    prefix: --inswiggle
- id: mins_v_len
  doc: 'Minimum length acceptable to be an SV (default: 50)'
  type: long
  inputBinding:
    prefix: --minsvlen
- id: max_sv_len
  doc: 'Maximum length SV to report (default: 1000000)'
  type: long
  inputBinding:
    prefix: --maxsvlen
- id: overlap_ratio
  doc: 'Reciprocal overlap ratio (default: 0.5)'
  type: string
  inputBinding:
    prefix: --overlap_ratio
- id: min_avg_base_qual
  doc: 'Minimum average base quality (default: 20)'
  type: long
  inputBinding:
    prefix: --min_avg_base_qual
- id: min_mapq
  doc: 'Minimum MAPQ (default: 5)'
  type: long
  inputBinding:
    prefix: --min_mapq
- id: min_soft_clip
  doc: 'Minimum soft-clip (default: 20)'
  type: long
  inputBinding:
    prefix: --min_soft_clip
- id: max_nm
  doc: 'Maximum number of edits (default: 10)'
  type: long
  inputBinding:
    prefix: --max_nm
- id: min_matches
  doc: 'Mininum number of matches (default: 50)'
  type: long
  inputBinding:
    prefix: --min_matches
- id: min_support_ins
  doc: 'Minimum read support for calling insertions using soft-clips (including neighbors)
    (default: 15)'
  type: long
  inputBinding:
    prefix: --min_support_ins
- id: min_support_frac_ins
  doc: 'Minimum fraction of reads supporting insertion using soft-clips (including
    neighbors) (default: 0.05)'
  type: long
  inputBinding:
    prefix: --min_support_frac_ins
- id: max_ins_intervals
  doc: 'Maximum number of insertion intervals to generate (default: 10000)'
  type: long
  inputBinding:
    prefix: --max_ins_intervals
- id: mean_read_coverage
  doc: 'Mean read coverage (default: 50)'
  type: string
  inputBinding:
    prefix: --mean_read_coverage
- id: min_ins_cov_frac
  doc: 'Minimum read coverage around the insertion breakpoint. (default: 0.5)'
  type: long
  inputBinding:
    prefix: --min_ins_cov_frac
- id: max_ins_cov_frac
  doc: 'Maximum read coverage around the insertion breakpoint. (default: 1.5)'
  type: long
  inputBinding:
    prefix: --max_ins_cov_frac
- id: sc_other_scale
  doc: 'Control degree of incorporation of breakpoints from other methods. (default:
    5)'
  type: string
  inputBinding:
    prefix: --sc_other_scale
- id: extraction_max_read_pairs
  doc: 'Maximum number of pairs to extract for assembly (default: 10000)'
  type: string
  inputBinding:
    prefix: --extraction_max_read_pairs
- id: spades_max_interval_size
  doc: 'Maximum SV length for assembly (default: 50000)'
  type: string
  inputBinding:
    prefix: --spades_max_interval_size
- id: assembly_max_tools
  doc: 'Skip assembly if more than this many tools support a call (default 1) (default:
    1)'
  type: string
  inputBinding:
    prefix: --assembly_max_tools
- id: assembly_pad
  doc: 'Padding base pairs to use for assembling breakpoint with Spades and AGE (default:
    500)'
  type: string
  inputBinding:
    prefix: --assembly_pad
- id: stop_spades_on_fail
  doc: 'Abort on SPAdes failure (default: False)'
  type: boolean
  inputBinding:
    prefix: --stop_spades_on_fail
- id: age
  doc: 'Path to AGE executable (default: None)'
  type: string
  inputBinding:
    prefix: --age
- id: age_timeout
  doc: 'Maximum time (in seconds) for running AGE on an assembled contig (default:
    300)'
  type: string
  inputBinding:
    prefix: --age_timeout
- id: min_in_v_sub_align_len
  doc: 'Minimum length of inversion sub-alginment (default: 50)'
  type: long
  inputBinding:
    prefix: --min_inv_subalign_len
- id: min_del_sub_align_len
  doc: 'Minimum length of deletion sub-alginment (default: 50)'
  type: long
  inputBinding:
    prefix: --min_del_subalign_len
- id: age_window
  doc: 'Window size for AGE to merge nearby breakpoints (default: 20)'
  type: string
  inputBinding:
    prefix: --age_window
- id: boost_sc
  doc: 'Use soft-clips for improving breakpoint detection (default: False)'
  type: boolean
  inputBinding:
    prefix: --boost_sc
- id: gt_window
  doc: 'Window for genotyping (default: 100)'
  type: string
  inputBinding:
    prefix: --gt_window
- id: gt_normal_frac
  doc: 'Min. fraction of reads supporting reference for genotyping (default: 0.05)'
  type: string
  inputBinding:
    prefix: --gt_normal_frac
- id: enable_per_tool_output
  doc: 'Enable output of merged SVs for individual tools (default: False)'
  type: boolean
  inputBinding:
    prefix: --enable_per_tool_output
- id: workdir
  doc: 'Scratch directory for working (default: work)'
  type: string
  inputBinding:
    prefix: --workdir
- id: num_threads
  doc: 'Number of threads to use (default: 1)'
  type: string
  inputBinding:
    prefix: --num_threads
- id: outdir
  doc: 'Output directory (default: None)'
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- run_metasv.py
