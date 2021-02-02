version 1.0

task Ernemeth {
  input {
    File? fast_a
    File? bamsam_file_generated
    String? output_prefix
    Boolean? annotations_erne
    Boolean? annotations_bismark
    Boolean? annotations_epp
    String? compress
    File? write_bam
    Int? target
    Int? extend_target
    Boolean? on_target_annotations
    Boolean? print_only_covered
    Boolean? single_mode
    Boolean? multiple_mode
    Boolean? disambiguation_mode
    File? use_first
    Boolean? de_duplicate
    File? allowed_duplicates
    Boolean? disable_un_proper_pair
    Int? max_coverage
    Int? coverage_threshold
    Int? error_threshold
    Int? delta_m
    Int? min_c_cov
    Int? max_c_cov
    Int? aligned_reads_thr
    File? contamination_reference
  }
  command <<<
    erne_meth \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(bamsam_file_generated) then ("--input " +  '"' + bamsam_file_generated + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (annotations_erne) then "--annotations-erne" else ""} \
      ~{if (annotations_bismark) then "--annotations-bismark" else ""} \
      ~{if (annotations_epp) then "--annotations-epp" else ""} \
      ~{if defined(compress) then ("--compress " +  '"' + compress + '"') else ""} \
      ~{if (write_bam) then "--write-bam" else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(extend_target) then ("--extend-target " +  '"' + extend_target + '"') else ""} \
      ~{if (on_target_annotations) then "--on-target-annotations" else ""} \
      ~{if (print_only_covered) then "--print-only-covered" else ""} \
      ~{if (single_mode) then "--single-mode" else ""} \
      ~{if (multiple_mode) then "--multiple-mode" else ""} \
      ~{if (disambiguation_mode) then "--disambiguation-mode" else ""} \
      ~{if defined(use_first) then ("--use-first " +  '"' + use_first + '"') else ""} \
      ~{if (de_duplicate) then "--deduplicate" else ""} \
      ~{if defined(allowed_duplicates) then ("--allowed-duplicates " +  '"' + allowed_duplicates + '"') else ""} \
      ~{if (disable_un_proper_pair) then "--disable-unproper-pair" else ""} \
      ~{if defined(max_coverage) then ("--max-coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(coverage_threshold) then ("--coverage-threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if defined(error_threshold) then ("--error-threshold " +  '"' + error_threshold + '"') else ""} \
      ~{if defined(delta_m) then ("--delta-m " +  '"' + delta_m + '"') else ""} \
      ~{if defined(min_c_cov) then ("--min-C-cov " +  '"' + min_c_cov + '"') else ""} \
      ~{if defined(max_c_cov) then ("--max-C-cov " +  '"' + max_c_cov + '"') else ""} \
      ~{if defined(aligned_reads_thr) then ("--aligned-reads-thr " +  '"' + aligned_reads_thr + '"') else ""} \
      ~{if defined(contamination_reference) then ("--contamination-reference " +  '"' + contamination_reference + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "reference fasta file (can be repeated several\\ntime). [REQUIRED]"
    bamsam_file_generated: "BAM/SAM file generated with erne-bs5 [REQUIRED]"
    output_prefix: "prefix for output files (methylation analysis,\\nreports). [REQUIRED]"
    annotations_erne: "Generate methylation annotations in erne\\nformat. Format is: <chr> <position> <strand>\\n<context> <#C+#T> <methyl_level> <mult_reads>,\\nwhere methyl_level = #C/(#C+#T) (or NA if\\n#C+#T=0) and mult_reads is the number of\\nmultiple reads disambiguated that cover the\\nposition (only if --disambiguation-mode is\\nspecified, NA otherwise). Coordinates are\\n1-based. Default: disabled."
    annotations_bismark: "Generate methylation annotations in bismark\\ncytosine format. Format is: <chr> <position>\\n<strand> <#C> <#T> <context> <detailed\\ncontext>, where <position> for - strand (Gs on\\n+ strand) is computed as position of the\\ncorresponding G on + strand minus context\\nlength plus one (context length = 2 for CG and\\n3 for CHG/CHH). Context is one of CG/CHG/CHH,\\nwhile detailed context is the exact 3 bases of\\nthe context. Coordinates are 1-based. Default:\\ndisabled."
    annotations_epp: "Generate methylation annotations in the format\\nas output files from the Epigenome Processing\\nPipeline (EPP) applied at the Broad Institute.\\nFormat is (tab separated): <chr name> <start\\ncontext(included)> <end context(excluded)>\\n<methylation value and coverage as a string (\\n'#C/(#T+#C)', '0/0' if not covered )>\\n<methylation in range [0,1000]> <strand>\\n<context(CG/CHG/CHH)>. Coordinates are 0-based.\\nDefault: disabled."
    compress: "Compress methylation annotations in the\\nspecified format (example: --compress bz).\\nDefault: do not compress."
    write_bam: "write used alignments in a bam file. The bam\\nfile is called 'output_prefix_alignments_used.b\\nam', where output_prefix is the prefix\\nspecified with --output-prefix."
    target: "input bed file with targeted regions in the\\nformat chr start_pos(included)\\nend_pos(excluded). If specified, ERNE-METH will\\nproduce also target statistics and three output\\nfiles with extension _on_target.txt,\\n_off_target.txt and _out_target_cov_distributio\\nn.txt containing informations about % of\\ncovered bases on target having a given minimum\\ncoverage, number of covered bases off target\\nhaving a given minimum coverage, and a list of\\ntriples <distance_from_target, coverage,\\nnumber_of_positions> respectively. Here,\\ndistance_from_target is the distance from the\\nnearest target region, coverage is the coverage\\nof that position and number_of_positions is the\\nnumber of positions having that coverage and\\ndistance_from_target."
    extend_target: "Extend boundaries of the targeted regions by\\narg positions (on both sides). Useful to take\\ninto account tails of aligned reads at the\\nextremities of targeted regions while computing\\nstatistics. Default: 0."
    on_target_annotations: "In the annotations file print only on-target\\npositions (included extended positions, see\\n--extend-target). Default: false (print all\\npositions)."
    print_only_covered: "In the annotations file print only covered\\npositions. Default: false (print all\\ncytosines)."
    single_mode: "Modality 1: Use only single-mapping reads. This\\nmodality is incompatible with --multiple-mode.\\nDefault: enabled."
    multiple_mode: "Modality 2: With paired end, if one mate is\\nsingle and the other multiple, use the primary\\nalignment for the multiple-mapping read.\\nDefault: disabled"
    disambiguation_mode: "Modality 3: Use methylation information to\\ndisambiguate multiple-mapping reads. WARNING:\\ncan be used only on bam files produced with the\\noption --print-all and single-end reads.\\nDefault: disabled."
    use_first: "Use only the first arg alignments (or pairs if\\npaired-end) in the input file. If set to 0, use\\nall alignments. Default: 0."
    de_duplicate: "Automatically remove PCR duplicates while\\ncalling methylation. An alignment is considered\\nduplicate if another alignment with same\\nchromosome, starting position and orientation\\nhas already been processed. Given a set of\\nduplicates, only the first N appearing in the\\ninput file will be used for the methylation\\ncall, where N is specified with the option\\n--allowed-duplicates. For paired-end reads, a\\npair is considered duplicate if and only if\\nanother pair with same chromosome, starting\\nposition and orientation (for both reads) has\\nbeen aligned before. Default: false."
    allowed_duplicates: "If --deduplicate is specified, keep the first\\narg duplicate alignments for a read/pair (in\\nthe order seen in the bam file). Default: 1."
    disable_un_proper_pair: "With paired end reads, discard unproper pairs\\n(alignments on different strand/chromosome).\\nUnproper pairs could reflect structural\\nvariations. Default: disabled (accept unproper\\npairs)."
    max_coverage: "Do not increment Cytosine coverage counters if\\ncoverage of a Cytosine is > arg. Can be used to\\nnormalize read depth across multiple samples.\\nDefault: 2^16-1."
    coverage_threshold: "If the coverage of a cytosine in the reference\\nis < arg then it is considered as not covered.\\nDefault: 1."
    error_threshold: "(only with --disambiguation-mode) use an\\nalignment for the methylation pattern extension\\nonly if its average methylation distance per\\ncytosine is less or equal this value in %.\\nDefault: 100."
    delta_m: "(only with --disambiguation-mode) During\\ndisambiguation phase if there are multiple\\nalignments for a read then extend the\\nmethylation profile with the best one ONLY if\\nits methylation distance is at least by arg\\nsmaller than the second best one. High values\\nguarantee higher reliability. Default: 0."
    min_c_cov: "(only with --disambiguation-mode) Lower bound\\nfor the minimum number of cytosines in an\\nalignment that must be covered by the\\nmethylation pattern to process the alignment.\\nWhen C_cov reaches this value, the algorithm is\\nterminated. Default: 10."
    max_c_cov: "(only with --disambiguation-mode) Upper bound\\nfor the minimum number of cytosines in an\\nalignment that must be covered by the\\nmethylation pattern to process the alignment.\\nThis is the starting value for C_cov. Default:\\n20."
    aligned_reads_thr: "(only with --disambiguation-mode) If during a\\ncycle less or equal than arg reads have been\\ndisambiguated then decrement C_cov. Default: 10"
    contamination_reference: "reference file to use for contamination check\\n(in ERNE format)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_bam = "${in_write_bam}"
  }
}