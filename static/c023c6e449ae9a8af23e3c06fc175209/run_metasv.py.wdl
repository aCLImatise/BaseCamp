version 1.0

task RunMetasvpy {
  input {
    String? sample
    Array[String] pin_del_vcf
    File? pin_del_native
    Array[String] break_dancer_vcf
    File? break_dancer_native
    Array[String] break_seq_vcf
    Array[String] break_seq_native
    Array[String] cnv_nator_vcf
    File? cnv_nator_native
    Array[File] g_atk_vcf
    Array[String] manta_vcf
    Array[String] lumpy_vcf
    Array[String] cnv_kit_vcf
    Array[String] wham_vcf
    Int? mean_read_length
    File? reference
    Array[String] chromosomes
    File? gaps
    Boolean? filter_gaps
    Boolean? keep_standard_contigs
    Array[String] bams
    Int? i_size_mean
    Int? i_size_sd
    Int? wiggle
    Int? ins_wiggle
    Int? mins_v_len
    Int? max_sv_len
    Float? overlap_ratio
    Int? min_avg_base_qual
    Int? min_mapq
    Int? min_soft_clip
    Int? max_nm
    Int? min_matches
    Int? min_support_ins
    Int? min_support_frac_ins
    Int? max_ins_intervals
    Int? mean_read_coverage
    Float? min_ins_cov_frac
    Int? max_ins_cov_frac
    Int? sc_other_scale
    File? spades
    String? spades_options
    Int? spades_timeout
    Boolean? disable_assembly
    String? svs_to_assemble
    String? svs_to_soft_clip
    Int? extraction_max_read_pairs
    Int? spades_max_interval_size
    Int? assembly_max_tools
    Int? assembly_pad
    Boolean? stop_spades_on_fail
    File? age
    Int? age_timeout
    Int? min_in_v_sub_align_len
    Int? min_del_sub_align_len
    Int? age_window
    Boolean? boost_sc
    Int? gt_window
    Int? gt_normal_frac
    String? svs_to_report
    Boolean? enable_per_tool_output
    Directory? workdir
    Int? num_threads
    Directory? outdir
  }
  command <<<
    run_metasv_py \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(pin_del_vcf) then ("--pindel_vcf " +  '"' + pin_del_vcf + '"') else ""} \
      ~{if defined(pin_del_native) then ("--pindel_native " +  '"' + pin_del_native + '"') else ""} \
      ~{if defined(break_dancer_vcf) then ("--breakdancer_vcf " +  '"' + break_dancer_vcf + '"') else ""} \
      ~{if defined(break_dancer_native) then ("--breakdancer_native " +  '"' + break_dancer_native + '"') else ""} \
      ~{if defined(break_seq_vcf) then ("--breakseq_vcf " +  '"' + break_seq_vcf + '"') else ""} \
      ~{if defined(break_seq_native) then ("--breakseq_native " +  '"' + break_seq_native + '"') else ""} \
      ~{if defined(cnv_nator_vcf) then ("--cnvnator_vcf " +  '"' + cnv_nator_vcf + '"') else ""} \
      ~{if defined(cnv_nator_native) then ("--cnvnator_native " +  '"' + cnv_nator_native + '"') else ""} \
      ~{if defined(g_atk_vcf) then ("--gatk_vcf " +  '"' + g_atk_vcf + '"') else ""} \
      ~{if defined(manta_vcf) then ("--manta_vcf " +  '"' + manta_vcf + '"') else ""} \
      ~{if defined(lumpy_vcf) then ("--lumpy_vcf " +  '"' + lumpy_vcf + '"') else ""} \
      ~{if defined(cnv_kit_vcf) then ("--cnvkit_vcf " +  '"' + cnv_kit_vcf + '"') else ""} \
      ~{if defined(wham_vcf) then ("--wham_vcf " +  '"' + wham_vcf + '"') else ""} \
      ~{if defined(mean_read_length) then ("--mean_read_length " +  '"' + mean_read_length + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(gaps) then ("--gaps " +  '"' + gaps + '"') else ""} \
      ~{if (filter_gaps) then "--filter_gaps" else ""} \
      ~{if (keep_standard_contigs) then "--keep_standard_contigs" else ""} \
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
      ~{if defined(spades) then ("--spades " +  '"' + spades + '"') else ""} \
      ~{if defined(spades_options) then ("--spades_options " +  '"' + spades_options + '"') else ""} \
      ~{if defined(spades_timeout) then ("--spades_timeout " +  '"' + spades_timeout + '"') else ""} \
      ~{if (disable_assembly) then "--disable_assembly" else ""} \
      ~{if defined(svs_to_assemble) then ("--svs_to_assemble " +  '"' + svs_to_assemble + '"') else ""} \
      ~{if defined(svs_to_soft_clip) then ("--svs_to_softclip " +  '"' + svs_to_soft_clip + '"') else ""} \
      ~{if defined(extraction_max_read_pairs) then ("--extraction_max_read_pairs " +  '"' + extraction_max_read_pairs + '"') else ""} \
      ~{if defined(spades_max_interval_size) then ("--spades_max_interval_size " +  '"' + spades_max_interval_size + '"') else ""} \
      ~{if defined(assembly_max_tools) then ("--assembly_max_tools " +  '"' + assembly_max_tools + '"') else ""} \
      ~{if defined(assembly_pad) then ("--assembly_pad " +  '"' + assembly_pad + '"') else ""} \
      ~{if (stop_spades_on_fail) then "--stop_spades_on_fail" else ""} \
      ~{if defined(age) then ("--age " +  '"' + age + '"') else ""} \
      ~{if defined(age_timeout) then ("--age_timeout " +  '"' + age_timeout + '"') else ""} \
      ~{if defined(min_in_v_sub_align_len) then ("--min_inv_subalign_len " +  '"' + min_in_v_sub_align_len + '"') else ""} \
      ~{if defined(min_del_sub_align_len) then ("--min_del_subalign_len " +  '"' + min_del_sub_align_len + '"') else ""} \
      ~{if defined(age_window) then ("--age_window " +  '"' + age_window + '"') else ""} \
      ~{if (boost_sc) then "--boost_sc" else ""} \
      ~{if defined(gt_window) then ("--gt_window " +  '"' + gt_window + '"') else ""} \
      ~{if defined(gt_normal_frac) then ("--gt_normal_frac " +  '"' + gt_normal_frac + '"') else ""} \
      ~{if defined(svs_to_report) then ("--svs_to_report " +  '"' + svs_to_report + '"') else ""} \
      ~{if (enable_per_tool_output) then "--enable_per_tool_output" else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    sample: "Sample name (default: None)"
    pin_del_vcf: "VCF file or dir for Pindel VCFs (default: [])"
    pin_del_native: "list [File list ...]\\nPindel native files (default: [])"
    break_dancer_vcf: "VCF file or dir for BreakDancer VCFs (default: [])"
    break_dancer_native: "list [File list ...]\\nBreakDancer native files (default: [])"
    break_seq_vcf: "VCF file or dir for BreakSeq VCFs (default: [])"
    break_seq_native: "BreakSeq native GFF files (default: [])"
    cnv_nator_vcf: "VCF file or dir for CNVnator VCFs (default: [])"
    cnv_nator_native: "list [File list ...]\\nCNVnator native files (default: [])"
    g_atk_vcf: "VCF file or dir for gatk VCFs (default: [])"
    manta_vcf: "VCF file or dir for Manta VCFs (default: [])"
    lumpy_vcf: "VCF file or dir for Lumpy VCFs (default: [])"
    cnv_kit_vcf: "VCF file or dir for CNVkit VCFs (default: [])"
    wham_vcf: "VCF file or dir for WHAM VCFs (default: [])"
    mean_read_length: "Mean read length (default: 100)"
    reference: "Reference file (default: None)"
    chromosomes: "Chromosome list to process. If unspecified, then all\\nchromosomes will be considered. (default: [])"
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
    min_support_ins: "Minimum read support for calling insertions using\\nsoft-clips (including neighbors) (default: 15)"
    min_support_frac_ins: "Minimum fraction of reads supporting insertion using\\nsoft-clips (including neighbors) (default: 0.05)"
    max_ins_intervals: "Maximum number of insertion intervals to generate\\n(default: 10000)"
    mean_read_coverage: "Mean read coverage (default: 50)"
    min_ins_cov_frac: "Minimum read coverage around the insertion breakpoint.\\n(default: 0.5)"
    max_ins_cov_frac: "Maximum read coverage around the insertion breakpoint.\\n(default: 1.5)"
    sc_other_scale: "Control degree of incorporation of breakpoints from\\nother methods. (default: 5)"
    spades: "Path to SPAdes executable (default: None)"
    spades_options: "Options for SPAdes (default: )"
    spades_timeout: "Maximum time (in seconds) for running SPAdes on an\\ninterval (default: 300)"
    disable_assembly: "Disable assembly (default: False)"
    svs_to_assemble: "[{DUP,INV,DEL,INS} ...]\\nSVs to assemble (default: ['INS', 'INV', 'DUP'])"
    svs_to_soft_clip: "[{DUP,INV,DEL,INS} ...]\\nSVs to soft-clip (default: ['INS', 'INV', 'DUP'])"
    extraction_max_read_pairs: "Maximum number of pairs to extract for assembly\\n(default: 10000)"
    spades_max_interval_size: "Maximum SV length for assembly (default: 50000)"
    assembly_max_tools: "Skip assembly if more than this many tools support a\\ncall (default 1) (default: 1)"
    assembly_pad: "Padding base pairs to use for assembling breakpoint\\nwith Spades and AGE (default: 500)"
    stop_spades_on_fail: "Abort on SPAdes failure (default: False)"
    age: "Path to AGE executable (default: None)"
    age_timeout: "Maximum time (in seconds) for running AGE on an\\nassembled contig (default: 300)"
    min_in_v_sub_align_len: "Minimum length of inversion sub-alginment (default:\\n50)"
    min_del_sub_align_len: "Minimum length of deletion sub-alginment (default: 50)"
    age_window: "Window size for AGE to merge nearby breakpoints\\n(default: 20)"
    boost_sc: "Use soft-clips for improving breakpoint detection\\n(default: False)"
    gt_window: "Window for genotyping (default: 100)"
    gt_normal_frac: "Min. fraction of reads supporting reference for\\ngenotyping (default: 0.05)"
    svs_to_report: "[{INV,CTX,INS,DEL,ITX,DUP} ...]\\nSV types to report (default: set(['INV', 'CTX', 'INS',\\n'DEL', 'ITX', 'DUP']))"
    enable_per_tool_output: "Enable output of merged SVs for individual tools\\n(default: False)"
    workdir: "Scratch directory for working (default: work)"
    num_threads: "Number of threads to use (default: 1)"
    outdir: "Output directory (default: None)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}