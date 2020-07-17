version 1.0

task RunMetasv.py {
  input {
    Array[File] g_atk_vcf
    Array[String] manta_vcf
    Array[String] lumpy_vcf
    Array[String] cnv_kit_vcf
    Array[String] wham_vcf
    String? mean_read_length
    String? reference
    Array[String] chromosomes
    String? gaps
    Boolean? filter_gaps
    Boolean? keep_standard_contigs
    Array[String] bams
    String? i_size_mean
    String? i_size_sd
    String? wiggle
    String? ins_wiggle
    Int? mins_v_len
    Int? max_sv_len
    String? overlap_ratio
    Int? min_avg_base_qual
    Int? min_mapq
    Int? min_soft_clip
    Int? max_nm
    Int? min_matches
    Int? min_support_ins
    Int? min_support_frac_ins
    Int? max_ins_intervals
    String? mean_read_coverage
    Int? min_ins_cov_frac
    Int? max_ins_cov_frac
    String? sc_other_scale
    String? extraction_max_read_pairs
    String? spades_max_interval_size
    String? assembly_max_tools
    String? assembly_pad
    Boolean? stop_spades_on_fail
    String? age
    String? age_timeout
    Int? min_in_v_sub_align_len
    Int? min_del_sub_align_len
    String? age_window
    Boolean? boost_sc
    String? gt_window
    String? gt_normal_frac
    Boolean? enable_per_tool_output
    String? workdir
    String? num_threads
    String? outdir
    String? sample
  }
  command <<<
    run_metasv.py \
      ~{if defined(g_atk_vcf) then ("--gatk_vcf " +  '"' + g_atk_vcf + '"') else ""} \
      ~{if defined(manta_vcf) then ("--manta_vcf " +  '"' + manta_vcf + '"') else ""} \
      ~{if defined(lumpy_vcf) then ("--lumpy_vcf " +  '"' + lumpy_vcf + '"') else ""} \
      ~{if defined(cnv_kit_vcf) then ("--cnvkit_vcf " +  '"' + cnv_kit_vcf + '"') else ""} \
      ~{if defined(wham_vcf) then ("--wham_vcf " +  '"' + wham_vcf + '"') else ""} \
      ~{if defined(mean_read_length) then ("--mean_read_length " +  '"' + mean_read_length + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(gaps) then ("--gaps " +  '"' + gaps + '"') else ""} \
      ~{true="--filter_gaps" false="" filter_gaps} \
      ~{true="--keep_standard_contigs" false="" keep_standard_contigs} \
      ~{if defined(bams) then ("--bams " +  '"' + bams + '"') else ""} \
      ~{if defined(i_size_mean) then ("--isize_mean " +  '"' + i_size_mean + '"') else ""} \
      ~{if defined(i_size_sd) then ("--isize_sd " +  '"' + i_size_sd + '"') else ""} \
      ~{if defined(wiggle) then ("--wiggle " +  '"' + wiggle + '"') else ""} \
      ~{if defined(ins_wiggle) then ("--inswiggle " +  '"' + ins_wiggle + '"') else ""} \
      ~{if defined(mins_v_len) then ("--minsvlen " +  '"' + mins_v_len + '"') else ""} \
      ~{if defined(max_sv_len) then ("--maxsvlen " +  '"' + max_sv_len + '"') else ""} \
      ~{if defined(overlap_ratio) then ("--overlap_ratio " +  '"' + overlap_ratio + '"') else ""} \
      ~{if defined(min_avg_base_qual) then ("--min_avg_base_qual " +  '"' + min_avg_base_qual + '"') else ""} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_soft_clip) then ("--min_soft_clip " +  '"' + min_soft_clip + '"') else ""} \
      ~{if defined(max_nm) then ("--max_nm " +  '"' + max_nm + '"') else ""} \
      ~{if defined(min_matches) then ("--min_matches " +  '"' + min_matches + '"') else ""} \
      ~{if defined(min_support_ins) then ("--min_support_ins " +  '"' + min_support_ins + '"') else ""} \
      ~{if defined(min_support_frac_ins) then ("--min_support_frac_ins " +  '"' + min_support_frac_ins + '"') else ""} \
      ~{if defined(max_ins_intervals) then ("--max_ins_intervals " +  '"' + max_ins_intervals + '"') else ""} \
      ~{if defined(mean_read_coverage) then ("--mean_read_coverage " +  '"' + mean_read_coverage + '"') else ""} \
      ~{if defined(min_ins_cov_frac) then ("--min_ins_cov_frac " +  '"' + min_ins_cov_frac + '"') else ""} \
      ~{if defined(max_ins_cov_frac) then ("--max_ins_cov_frac " +  '"' + max_ins_cov_frac + '"') else ""} \
      ~{if defined(sc_other_scale) then ("--sc_other_scale " +  '"' + sc_other_scale + '"') else ""} \
      ~{if defined(extraction_max_read_pairs) then ("--extraction_max_read_pairs " +  '"' + extraction_max_read_pairs + '"') else ""} \
      ~{if defined(spades_max_interval_size) then ("--spades_max_interval_size " +  '"' + spades_max_interval_size + '"') else ""} \
      ~{if defined(assembly_max_tools) then ("--assembly_max_tools " +  '"' + assembly_max_tools + '"') else ""} \
      ~{if defined(assembly_pad) then ("--assembly_pad " +  '"' + assembly_pad + '"') else ""} \
      ~{true="--stop_spades_on_fail" false="" stop_spades_on_fail} \
      ~{if defined(age) then ("--age " +  '"' + age + '"') else ""} \
      ~{if defined(age_timeout) then ("--age_timeout " +  '"' + age_timeout + '"') else ""} \
      ~{if defined(min_in_v_sub_align_len) then ("--min_inv_subalign_len " +  '"' + min_in_v_sub_align_len + '"') else ""} \
      ~{if defined(min_del_sub_align_len) then ("--min_del_subalign_len " +  '"' + min_del_sub_align_len + '"') else ""} \
      ~{if defined(age_window) then ("--age_window " +  '"' + age_window + '"') else ""} \
      ~{true="--boost_sc" false="" boost_sc} \
      ~{if defined(gt_window) then ("--gt_window " +  '"' + gt_window + '"') else ""} \
      ~{if defined(gt_normal_frac) then ("--gt_normal_frac " +  '"' + gt_normal_frac + '"') else ""} \
      ~{true="--enable_per_tool_output" false="" enable_per_tool_output} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""}
  >>>
  parameter_meta {
    g_atk_vcf: "VCF file or dir for gatk VCFs (default: [])"
    manta_vcf: "VCF file or dir for Manta VCFs (default: [])"
    lumpy_vcf: "VCF file or dir for Lumpy VCFs (default: [])"
    cnv_kit_vcf: "VCF file or dir for CNVkit VCFs (default: [])"
    wham_vcf: "VCF file or dir for WHAM VCFs (default: [])"
    mean_read_length: "Mean read length (default: 100)"
    reference: "Reference file (default: None)"
    chromosomes: "Chromosome list to process. If unspecified, then all chromosomes will be considered. (default: [])"
    gaps: "Gap bed file (default: None)"
    filter_gaps: "Filter out gaps (default: False)"
    keep_standard_contigs: "Keep only the major contigs + MT (default: False)"
    bams: "BAMs (default: [])"
    i_size_mean: "Insert size mean (default: 350.0)"
    i_size_sd: "Insert size standard deviation (default: 50.0)"
    wiggle: "Wiggle for interval overlap (default: 100)"
    ins_wiggle: "Wiggle for insertions, overides wiggle (default: 100)"
    mins_v_len: "Minimum length acceptable to be an SV (default: 50)"
    max_sv_len: "Maximum length SV to report (default: 1000000)"
    overlap_ratio: "Reciprocal overlap ratio (default: 0.5)"
    min_avg_base_qual: "Minimum average base quality (default: 20)"
    min_mapq: "Minimum MAPQ (default: 5)"
    min_soft_clip: "Minimum soft-clip (default: 20)"
    max_nm: "Maximum number of edits (default: 10)"
    min_matches: "Mininum number of matches (default: 50)"
    min_support_ins: "Minimum read support for calling insertions using soft-clips (including neighbors) (default: 15)"
    min_support_frac_ins: "Minimum fraction of reads supporting insertion using soft-clips (including neighbors) (default: 0.05)"
    max_ins_intervals: "Maximum number of insertion intervals to generate (default: 10000)"
    mean_read_coverage: "Mean read coverage (default: 50)"
    min_ins_cov_frac: "Minimum read coverage around the insertion breakpoint. (default: 0.5)"
    max_ins_cov_frac: "Maximum read coverage around the insertion breakpoint. (default: 1.5)"
    sc_other_scale: "Control degree of incorporation of breakpoints from other methods. (default: 5)"
    extraction_max_read_pairs: "Maximum number of pairs to extract for assembly (default: 10000)"
    spades_max_interval_size: "Maximum SV length for assembly (default: 50000)"
    assembly_max_tools: "Skip assembly if more than this many tools support a call (default 1) (default: 1)"
    assembly_pad: "Padding base pairs to use for assembling breakpoint with Spades and AGE (default: 500)"
    stop_spades_on_fail: "Abort on SPAdes failure (default: False)"
    age: "Path to AGE executable (default: None)"
    age_timeout: "Maximum time (in seconds) for running AGE on an assembled contig (default: 300)"
    min_in_v_sub_align_len: "Minimum length of inversion sub-alginment (default: 50)"
    min_del_sub_align_len: "Minimum length of deletion sub-alginment (default: 50)"
    age_window: "Window size for AGE to merge nearby breakpoints (default: 20)"
    boost_sc: "Use soft-clips for improving breakpoint detection (default: False)"
    gt_window: "Window for genotyping (default: 100)"
    gt_normal_frac: "Min. fraction of reads supporting reference for genotyping (default: 0.05)"
    enable_per_tool_output: "Enable output of merged SVs for individual tools (default: False)"
    workdir: "Scratch directory for working (default: work)"
    num_threads: "Number of threads to use (default: 1)"
    outdir: "Output directory (default: None)"
    sample: ""
  }
}