class: CommandLineTool
id: run_metasv.py.cwl
inputs:
- id: in_sample
  doc: 'Sample name (default: None)'
  type: string?
  inputBinding:
    prefix: --sample
- id: in_pin_del_vcf
  doc: 'VCF file or dir for Pindel VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --pindel_vcf
- id: in_pin_del_native
  doc: "list [File list ...]\nPindel native files (default: [])"
  type: File?
  inputBinding:
    prefix: --pindel_native
- id: in_break_dancer_vcf
  doc: 'VCF file or dir for BreakDancer VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --breakdancer_vcf
- id: in_break_dancer_native
  doc: "list [File list ...]\nBreakDancer native files (default: [])"
  type: File?
  inputBinding:
    prefix: --breakdancer_native
- id: in_break_seq_vcf
  doc: 'VCF file or dir for BreakSeq VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --breakseq_vcf
- id: in_break_seq_native
  doc: 'BreakSeq native GFF files (default: [])'
  type: string[]
  inputBinding:
    prefix: --breakseq_native
- id: in_cnv_nator_vcf
  doc: 'VCF file or dir for CNVnator VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --cnvnator_vcf
- id: in_cnv_nator_native
  doc: "list [File list ...]\nCNVnator native files (default: [])"
  type: File?
  inputBinding:
    prefix: --cnvnator_native
- id: in_g_atk_vcf
  doc: 'VCF file or dir for gatk VCFs (default: [])'
  type: File[]
  inputBinding:
    prefix: --gatk_vcf
- id: in_manta_vcf
  doc: 'VCF file or dir for Manta VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --manta_vcf
- id: in_lumpy_vcf
  doc: 'VCF file or dir for Lumpy VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --lumpy_vcf
- id: in_cnv_kit_vcf
  doc: 'VCF file or dir for CNVkit VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --cnvkit_vcf
- id: in_wham_vcf
  doc: 'VCF file or dir for WHAM VCFs (default: [])'
  type: string[]
  inputBinding:
    prefix: --wham_vcf
- id: in_mean_read_length
  doc: 'Mean read length (default: 100)'
  type: long?
  inputBinding:
    prefix: --mean_read_length
- id: in_reference
  doc: 'Reference file (default: None)'
  type: File?
  inputBinding:
    prefix: --reference
- id: in_chromosomes
  doc: "Chromosome list to process. If unspecified, then all\nchromosomes will be\
    \ considered. (default: [])"
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_gaps
  doc: 'Gap bed file (default: None)'
  type: File?
  inputBinding:
    prefix: --gaps
- id: in_filter_gaps
  doc: 'Filter out gaps (default: False)'
  type: boolean?
  inputBinding:
    prefix: --filter_gaps
- id: in_keep_standard_contigs
  doc: 'Keep only the major contigs + MT (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_standard_contigs
- id: in_bams
  doc: 'BAMs (default: [])'
  type: string[]
  inputBinding:
    prefix: --bams
- id: in_i_size_mean
  doc: 'Insert size mean (default: 350.0)'
  type: long?
  inputBinding:
    prefix: --isize_mean
- id: in_i_size_sd
  doc: 'Insert size standard deviation (default: 50.0)'
  type: long?
  inputBinding:
    prefix: --isize_sd
- id: in_wiggle
  doc: 'Wiggle for interval overlap (default: 100)'
  type: long?
  inputBinding:
    prefix: --wiggle
- id: in_ins_wiggle
  doc: 'Wiggle for insertions, overides wiggle (default: 100)'
  type: long?
  inputBinding:
    prefix: --inswiggle
- id: in_mins_v_len
  doc: 'Minimum length acceptable to be an SV (default: 50)'
  type: long?
  inputBinding:
    prefix: --minsvlen
- id: in_max_sv_len
  doc: 'Maximum length SV to report (default: 1000000)'
  type: long?
  inputBinding:
    prefix: --maxsvlen
- id: in_overlap_ratio
  doc: 'Reciprocal overlap ratio (default: 0.5)'
  type: double?
  inputBinding:
    prefix: --overlap_ratio
- id: in_min_avg_base_qual
  doc: 'Minimum average base quality (default: 20)'
  type: long?
  inputBinding:
    prefix: --min_avg_base_qual
- id: in_min_mapq
  doc: 'Minimum MAPQ (default: 5)'
  type: long?
  inputBinding:
    prefix: --min_mapq
- id: in_min_soft_clip
  doc: 'Minimum soft-clip (default: 20)'
  type: long?
  inputBinding:
    prefix: --min_soft_clip
- id: in_max_nm
  doc: 'Maximum number of edits (default: 10)'
  type: long?
  inputBinding:
    prefix: --max_nm
- id: in_min_matches
  doc: 'Mininum number of matches (default: 50)'
  type: long?
  inputBinding:
    prefix: --min_matches
- id: in_min_support_ins
  doc: "Minimum read support for calling insertions using\nsoft-clips (including neighbors)\
    \ (default: 15)"
  type: long?
  inputBinding:
    prefix: --min_support_ins
- id: in_min_support_frac_ins
  doc: "Minimum fraction of reads supporting insertion using\nsoft-clips (including\
    \ neighbors) (default: 0.05)"
  type: long?
  inputBinding:
    prefix: --min_support_frac_ins
- id: in_max_ins_intervals
  doc: "Maximum number of insertion intervals to generate\n(default: 10000)"
  type: long?
  inputBinding:
    prefix: --max_ins_intervals
- id: in_mean_read_coverage
  doc: 'Mean read coverage (default: 50)'
  type: long?
  inputBinding:
    prefix: --mean_read_coverage
- id: in_min_ins_cov_frac
  doc: "Minimum read coverage around the insertion breakpoint.\n(default: 0.5)"
  type: double?
  inputBinding:
    prefix: --min_ins_cov_frac
- id: in_max_ins_cov_frac
  doc: "Maximum read coverage around the insertion breakpoint.\n(default: 1.5)"
  type: long?
  inputBinding:
    prefix: --max_ins_cov_frac
- id: in_sc_other_scale
  doc: "Control degree of incorporation of breakpoints from\nother methods. (default:\
    \ 5)"
  type: long?
  inputBinding:
    prefix: --sc_other_scale
- id: in_spades
  doc: 'Path to SPAdes executable (default: None)'
  type: File?
  inputBinding:
    prefix: --spades
- id: in_spades_options
  doc: 'Options for SPAdes (default: )'
  type: string?
  inputBinding:
    prefix: --spades_options
- id: in_spades_timeout
  doc: "Maximum time (in seconds) for running SPAdes on an\ninterval (default: 300)"
  type: long?
  inputBinding:
    prefix: --spades_timeout
- id: in_disable_assembly
  doc: 'Disable assembly (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable_assembly
- id: in_svs_to_assemble
  doc: "[{DUP,INV,DEL,INS} ...]\nSVs to assemble (default: ['INS', 'INV', 'DUP'])"
  type: string?
  inputBinding:
    prefix: --svs_to_assemble
- id: in_svs_to_soft_clip
  doc: "[{DUP,INV,DEL,INS} ...]\nSVs to soft-clip (default: ['INS', 'INV', 'DUP'])"
  type: string?
  inputBinding:
    prefix: --svs_to_softclip
- id: in_extraction_max_read_pairs
  doc: "Maximum number of pairs to extract for assembly\n(default: 10000)"
  type: long?
  inputBinding:
    prefix: --extraction_max_read_pairs
- id: in_spades_max_interval_size
  doc: 'Maximum SV length for assembly (default: 50000)'
  type: long?
  inputBinding:
    prefix: --spades_max_interval_size
- id: in_assembly_max_tools
  doc: "Skip assembly if more than this many tools support a\ncall (default 1) (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --assembly_max_tools
- id: in_assembly_pad
  doc: "Padding base pairs to use for assembling breakpoint\nwith Spades and AGE (default:\
    \ 500)"
  type: long?
  inputBinding:
    prefix: --assembly_pad
- id: in_stop_spades_on_fail
  doc: 'Abort on SPAdes failure (default: False)'
  type: boolean?
  inputBinding:
    prefix: --stop_spades_on_fail
- id: in_age
  doc: 'Path to AGE executable (default: None)'
  type: File?
  inputBinding:
    prefix: --age
- id: in_age_timeout
  doc: "Maximum time (in seconds) for running AGE on an\nassembled contig (default:\
    \ 300)"
  type: long?
  inputBinding:
    prefix: --age_timeout
- id: in_min_in_v_sub_align_len
  doc: "Minimum length of inversion sub-alginment (default:\n50)"
  type: long?
  inputBinding:
    prefix: --min_inv_subalign_len
- id: in_min_del_sub_align_len
  doc: 'Minimum length of deletion sub-alginment (default: 50)'
  type: long?
  inputBinding:
    prefix: --min_del_subalign_len
- id: in_age_window
  doc: "Window size for AGE to merge nearby breakpoints\n(default: 20)"
  type: long?
  inputBinding:
    prefix: --age_window
- id: in_boost_sc
  doc: "Use soft-clips for improving breakpoint detection\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --boost_sc
- id: in_gt_window
  doc: 'Window for genotyping (default: 100)'
  type: long?
  inputBinding:
    prefix: --gt_window
- id: in_gt_normal_frac
  doc: "Min. fraction of reads supporting reference for\ngenotyping (default: 0.05)"
  type: long?
  inputBinding:
    prefix: --gt_normal_frac
- id: in_svs_to_report
  doc: "[{INV,CTX,INS,DEL,ITX,DUP} ...]\nSV types to report (default: set(['INV',\
    \ 'CTX', 'INS',\n'DEL', 'ITX', 'DUP']))"
  type: string?
  inputBinding:
    prefix: --svs_to_report
- id: in_enable_per_tool_output
  doc: "Enable output of merged SVs for individual tools\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --enable_per_tool_output
- id: in_workdir
  doc: 'Scratch directory for working (default: work)'
  type: Directory?
  inputBinding:
    prefix: --workdir
- id: in_num_threads
  doc: 'Number of threads to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_outdir
  doc: 'Output directory (default: None)'
  type: Directory?
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory (default: None)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- run_metasv.py
