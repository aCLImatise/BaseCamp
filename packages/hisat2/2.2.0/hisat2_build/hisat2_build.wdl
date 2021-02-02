version 1.0

task Hisat2build {
  input {
    Boolean? reference_sequences_given
    Boolean? large_index
    Boolean? a_slash_no_auto
    Int? number_of_threads
    Int? bmax
    Int? bmax_divn
    Int? dcv
    Boolean? no_dc
    Boolean? r_slash_no_ref
    Boolean? three_slash_just_ref
    Int? oslash_off_rate
    Int? t_slash_f_tab_chars
    Int? local_off_rate
    Int? local_f_tab_chars
    File? snp
    File? haplotype
    File? ss
    File? exon
    File? repeat_ref
    File? repeat_info
    File? repeat_snp
    File? repeat_haplotype
    Int? seed
    Boolean? q_slash_quiet
    Boolean? h_slash_help
    String reference_in
    Int his_at_two_index_base
  }
  command <<<
    hisat2_build \
      ~{reference_in} \
      ~{his_at_two_index_base} \
      ~{if (reference_sequences_given) then "-c" else ""} \
      ~{if (large_index) then "--large-index" else ""} \
      ~{if (a_slash_no_auto) then "-a/--noauto" else ""} \
      ~{if defined(number_of_threads) then ("-p " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(bmax) then ("--bmax " +  '"' + bmax + '"') else ""} \
      ~{if defined(bmax_divn) then ("--bmaxdivn " +  '"' + bmax_divn + '"') else ""} \
      ~{if defined(dcv) then ("--dcv " +  '"' + dcv + '"') else ""} \
      ~{if (no_dc) then "--nodc" else ""} \
      ~{if (r_slash_no_ref) then "-r/--noref" else ""} \
      ~{if (three_slash_just_ref) then "-3/--justref" else ""} \
      ~{if defined(oslash_off_rate) then ("-o/--offrate " +  '"' + oslash_off_rate + '"') else ""} \
      ~{if defined(t_slash_f_tab_chars) then ("-t/--ftabchars " +  '"' + t_slash_f_tab_chars + '"') else ""} \
      ~{if defined(local_off_rate) then ("--localoffrate " +  '"' + local_off_rate + '"') else ""} \
      ~{if defined(local_f_tab_chars) then ("--localftabchars " +  '"' + local_f_tab_chars + '"') else ""} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""} \
      ~{if defined(haplotype) then ("--haplotype " +  '"' + haplotype + '"') else ""} \
      ~{if defined(ss) then ("--ss " +  '"' + ss + '"') else ""} \
      ~{if defined(exon) then ("--exon " +  '"' + exon + '"') else ""} \
      ~{if defined(repeat_ref) then ("--repeat-ref " +  '"' + repeat_ref + '"') else ""} \
      ~{if defined(repeat_info) then ("--repeat-info " +  '"' + repeat_info + '"') else ""} \
      ~{if defined(repeat_snp) then ("--repeat-snp " +  '"' + repeat_snp + '"') else ""} \
      ~{if defined(repeat_haplotype) then ("--repeat-haplotype " +  '"' + repeat_haplotype + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (q_slash_quiet) then "-q/--quiet" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""}
  >>>
  parameter_meta {
    reference_sequences_given: "reference sequences given on cmd line (as\\n<reference_in>)"
    large_index: "force generated index to be 'large', even if ref\\nhas fewer than 4 billion nucleotides"
    a_slash_no_auto: "disable automatic -p/--bmax/--dcv memory-fitting"
    number_of_threads: "number of threads"
    bmax: "max bucket sz for blockwise suffix-array builder"
    bmax_divn: "max bucket sz as divisor of ref len (default: 4)"
    dcv: "diff-cover period for blockwise (default: 1024)"
    no_dc: "disable diff-cover (algorithm becomes quadratic)"
    r_slash_no_ref: "don't build .3/.4.ht2 (packed reference) portion"
    three_slash_just_ref: "just build .3/.4.ht2 (packed reference) portion"
    oslash_off_rate: "SA is sampled every 2^offRate BWT chars (default: 5)"
    t_slash_f_tab_chars: "# of chars consumed in initial lookup (default: 10)"
    local_off_rate: "SA (local) is sampled every 2^offRate BWT chars (default: 3)"
    local_f_tab_chars: "# of chars consumed in initial lookup in a local index (default: 6)"
    snp: "SNP file name"
    haplotype: "haplotype file name"
    ss: "Splice site file name"
    exon: "Exon file name"
    repeat_ref: "Repeat reference file name"
    repeat_info: "Repeat information file name"
    repeat_snp: "Repeat snp file name"
    repeat_haplotype: "Repeat haplotype file name"
    seed: "seed for random number generator"
    q_slash_quiet: "disable verbose output (for debugging)"
    h_slash_help: "print detailed description of tool and its options"
    reference_in: "comma-separated list of files with ref sequences"
    his_at_two_index_base: "write ht2 data to files with this dir/basename"
  }
  output {
    File out_stdout = stdout()
  }
}