version 1.0

task RunMetasvScAnalysispy {
  input {
    Array[String] bams
    Array[String] chromosomes
    Directory? workdir
    Int? num_threads
    Int? min_avg_base_qual
    Int? min_mapq
    Int? min_soft_clip
    Int? max_nm
    Int? min_matches
    Int? i_size_mean
    Int? i_size_sd
    Int? pad
    Int? min_support_ins
    Int? min_support_frac_ins
    String? skip_bed
    Int? max_intervals
    String? svs_to_soft_clip
    Float? overlap_ratio
    Int? mean_read_length
    Int? mean_read_coverage
    Float? min_ins_cov_frac
    Int? max_ins_cov_frac
    Int? assembly_max_tools
    Int? other_scale
  }
  command <<<
    run_metasv_sc_analysis_py \
      ~{if defined(bams) then ("--bams " +  '"' + bams + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(min_avg_base_qual) then ("--min_avg_base_qual " +  '"' + min_avg_base_qual + '"') else ""} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(min_soft_clip) then ("--min_soft_clip " +  '"' + min_soft_clip + '"') else ""} \
      ~{if defined(max_nm) then ("--max_nm " +  '"' + max_nm + '"') else ""} \
      ~{if defined(min_matches) then ("--min_matches " +  '"' + min_matches + '"') else ""} \
      ~{if defined(i_size_mean) then ("--isize_mean " +  '"' + i_size_mean + '"') else ""} \
      ~{if defined(i_size_sd) then ("--isize_sd " +  '"' + i_size_sd + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if defined(min_support_ins) then ("--min_support_ins " +  '"' + min_support_ins + '"') else ""} \
      ~{if defined(min_support_frac_ins) then ("--min_support_frac_ins " +  '"' + min_support_frac_ins + '"') else ""} \
      ~{if defined(skip_bed) then ("--skip_bed " +  '"' + skip_bed + '"') else ""} \
      ~{if defined(max_intervals) then ("--max_intervals " +  '"' + max_intervals + '"') else ""} \
      ~{if defined(svs_to_soft_clip) then ("--svs_to_softclip " +  '"' + svs_to_soft_clip + '"') else ""} \
      ~{if defined(overlap_ratio) then ("--overlap_ratio " +  '"' + overlap_ratio + '"') else ""} \
      ~{if defined(mean_read_length) then ("--mean_read_length " +  '"' + mean_read_length + '"') else ""} \
      ~{if defined(mean_read_coverage) then ("--mean_read_coverage " +  '"' + mean_read_coverage + '"') else ""} \
      ~{if defined(min_ins_cov_frac) then ("--min_ins_cov_frac " +  '"' + min_ins_cov_frac + '"') else ""} \
      ~{if defined(max_ins_cov_frac) then ("--max_ins_cov_frac " +  '"' + max_ins_cov_frac + '"') else ""} \
      ~{if defined(assembly_max_tools) then ("--assembly_max_tools " +  '"' + assembly_max_tools + '"') else ""} \
      ~{if defined(other_scale) then ("--other_scale " +  '"' + other_scale + '"') else ""}
  >>>
  parameter_meta {
    bams: "BAMs (default: None)"
    chromosomes: "Chromosomes (default: [])"
    workdir: "Working directory (default: work)"
    num_threads: "Number of threads to use (default: 1)"
    min_avg_base_qual: "Minimum average base quality (default: 20)"
    min_mapq: "Minimum MAPQ (default: 5)"
    min_soft_clip: "Minimum soft-clip (default: 20)"
    max_nm: "Maximum number of edits (default: 10)"
    min_matches: "Minimum number of matches (default: 50)"
    i_size_mean: "Insert-size mean (default: 350.0)"
    i_size_sd: "Insert-size s.d. (default: 50.0)"
    pad: "Padding on both sides of the candidate locations\\n(default: 500)"
    min_support_ins: "Minimum read support for calling insertions using\\nsoft-clips (including neighbors) (default: 15)"
    min_support_frac_ins: "Minimum fraction of reads supporting insertion using\\nsoft-clips (including neighbors) (default: 0.05)"
    skip_bed: "BED regions with which no overlap should happen\\n(default: None)"
    max_intervals: "Maximum number of intervals to process. Intervals are\\nranked by normalized read-support (default: 10000)"
    svs_to_soft_clip: "[{DUP,INV,DEL,INS} ...]\\nSVs to perform soft-clip analysis on (default:\\nset(['DUP', 'INV', 'DEL', 'INS']))"
    overlap_ratio: "Reciprocal overlap ratio (default: 0.5)"
    mean_read_length: "Mean read length (default: 100)"
    mean_read_coverage: "Mean read coverage (default: 50)"
    min_ins_cov_frac: "Minimum read coverage around the insertion breakpoint.\\n(default: 0.5)"
    max_ins_cov_frac: "Maximum read coverage around the insertion breakpoint.\\n(default: 1.5)"
    assembly_max_tools: "Skip assembly if more than this many tools support a\\ncall (default 1) (default: 1)"
    other_scale: "Parameter to control none SV type resolution (default:\\n5)"
  }
  output {
    File out_stdout = stdout()
  }
}