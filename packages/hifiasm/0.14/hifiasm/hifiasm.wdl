version 1.0

task Hifiasm {
  input {
    String? prefix_output_files
    Boolean? ignore_saved_correction
    Int? number_of_threads
    Int? length_adapters_removed
    Int? kmer_length_be
    Int? minimizer_window_size
    Int? number_bits_bloom
    Float? drop_kmers_occurring
    Int? consider_maxdcoveragen_overlaps
    Int? round_of_correction
    Int? round_assembly_cleaning
    Int? pop_bubbles_contig
    Int? pop_bubbles_unitig
    Int? remove_tip_unitigs
    Float? max_overlap_drop
    Float? min_overlap_drop
    Boolean? disable_post_join
    Boolean? low_q
    Boolean? b_cov
    Boolean? h_cov
    Boolean? m_rate
    File? happaternal_kmer_dump
    File? hapmaternal_kmer_dump
    Int? lower_bound_binned
    Int? upper_bound_binned
    File? list_happaternal_read
    File? list_hapmaternal_read
    Int? purge_level_purging
    Float? similarity_threshold_duplicate
    Int? min_number_overlapped
    Int? purge_cov
    Boolean? high_het
    Int? hone
    Int? h_two
    Int in_one_dot_fq
    Int in_two_dot_fq
  }
  command <<<
    hifiasm \
      ~{in_one_dot_fq} \
      ~{in_two_dot_fq} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if (ignore_saved_correction) then "-i" else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(length_adapters_removed) then ("-z " +  '"' + length_adapters_removed + '"') else ""} \
      ~{if defined(kmer_length_be) then ("-k " +  '"' + kmer_length_be + '"') else ""} \
      ~{if defined(minimizer_window_size) then ("-w " +  '"' + minimizer_window_size + '"') else ""} \
      ~{if defined(number_bits_bloom) then ("-f " +  '"' + number_bits_bloom + '"') else ""} \
      ~{if defined(drop_kmers_occurring) then ("-D " +  '"' + drop_kmers_occurring + '"') else ""} \
      ~{if defined(consider_maxdcoveragen_overlaps) then ("-N " +  '"' + consider_maxdcoveragen_overlaps + '"') else ""} \
      ~{if defined(round_of_correction) then ("-r " +  '"' + round_of_correction + '"') else ""} \
      ~{if defined(round_assembly_cleaning) then ("-a " +  '"' + round_assembly_cleaning + '"') else ""} \
      ~{if defined(pop_bubbles_contig) then ("-m " +  '"' + pop_bubbles_contig + '"') else ""} \
      ~{if defined(pop_bubbles_unitig) then ("-p " +  '"' + pop_bubbles_unitig + '"') else ""} \
      ~{if defined(remove_tip_unitigs) then ("-n " +  '"' + remove_tip_unitigs + '"') else ""} \
      ~{if defined(max_overlap_drop) then ("-x " +  '"' + max_overlap_drop + '"') else ""} \
      ~{if defined(min_overlap_drop) then ("-y " +  '"' + min_overlap_drop + '"') else ""} \
      ~{if (disable_post_join) then "-u" else ""} \
      ~{if (low_q) then "--lowQ" else ""} \
      ~{if (b_cov) then "--b-cov" else ""} \
      ~{if (h_cov) then "--h-cov" else ""} \
      ~{if (m_rate) then "--m-rate" else ""} \
      ~{if defined(happaternal_kmer_dump) then ("-1 " +  '"' + happaternal_kmer_dump + '"') else ""} \
      ~{if defined(hapmaternal_kmer_dump) then ("-2 " +  '"' + hapmaternal_kmer_dump + '"') else ""} \
      ~{if defined(lower_bound_binned) then ("-c " +  '"' + lower_bound_binned + '"') else ""} \
      ~{if defined(upper_bound_binned) then ("-d " +  '"' + upper_bound_binned + '"') else ""} \
      ~{if defined(list_happaternal_read) then ("-3 " +  '"' + list_happaternal_read + '"') else ""} \
      ~{if defined(list_hapmaternal_read) then ("-4 " +  '"' + list_hapmaternal_read + '"') else ""} \
      ~{if defined(purge_level_purging) then ("-l " +  '"' + purge_level_purging + '"') else ""} \
      ~{if defined(similarity_threshold_duplicate) then ("-s " +  '"' + similarity_threshold_duplicate + '"') else ""} \
      ~{if defined(min_number_overlapped) then ("-O " +  '"' + min_number_overlapped + '"') else ""} \
      ~{if defined(purge_cov) then ("--purge-cov " +  '"' + purge_cov + '"') else ""} \
      ~{if (high_het) then "--high-het" else ""} \
      ~{if defined(hone) then ("--h1 " +  '"' + hone + '"') else ""} \
      ~{if defined(h_two) then ("--h2 " +  '"' + h_two + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hifiasm:0.14--h8b12597_0"
  }
  parameter_meta {
    prefix_output_files: "prefix of output files [hifiasm.asm]"
    ignore_saved_correction: "ignore saved read correction and overlaps"
    number_of_threads: "number of threads [1]"
    length_adapters_removed: "length of adapters that should be removed [0]"
    kmer_length_be: "k-mer length (must be <64) [51]"
    minimizer_window_size: "minimizer window size [51]"
    number_bits_bloom: "number of bits for bloom filter; 0 to disable [37]"
    drop_kmers_occurring: "drop k-mers occurring >FLOAT*coverage times [5.0]"
    consider_maxdcoveragen_overlaps: "consider up to max(-D*coverage,-N) overlaps for each oriented read [100]"
    round_of_correction: "round of correction [3]"
    round_assembly_cleaning: "round of assembly cleaning [4]"
    pop_bubbles_contig: "pop bubbles of <INT in size in contig graphs [10000000]"
    pop_bubbles_unitig: "pop bubbles of <INT in size in unitig graphs [100000]"
    remove_tip_unitigs: "remove tip unitigs composed of <=INT reads [3]"
    max_overlap_drop: "max overlap drop ratio [0.8]"
    min_overlap_drop: "min overlap drop ratio [0.2]"
    disable_post_join: "disable post join contigs step which may improve N50"
    low_q: "INT\\noutput contig regions with >=INT% inconsistency in BED format; 0 to disable [70]"
    b_cov: "INT\\nbreak contigs at positions with <INT-fold coverage; work with '--m-rate'; 0 to disable [0]"
    h_cov: "INT\\nbreak contigs at positions with >INT-fold coverage; work with '--m-rate'; -1 to disable [-1]"
    m_rate: "FLOAT\\nbreak contigs at positions with <=FLOAT*coverage exact overlaps;\\nonly work with '--b-cov' or '--h-cov'[0.75]"
    happaternal_kmer_dump: "hap1/paternal k-mer dump generated by \\\"yak count\\\" []"
    hapmaternal_kmer_dump: "hap2/maternal k-mer dump generated by \\\"yak count\\\" []"
    lower_bound_binned: "lower bound of the binned k-mer's frequency [2]"
    upper_bound_binned: "upper bound of the binned k-mer's frequency [5]"
    list_happaternal_read: "list of hap1/paternal read names []"
    list_hapmaternal_read: "list of hap2/maternal read names []"
    purge_level_purging: "purge level. 0: no purging; 1: light; 2: aggressive [0 for trio; 2 for unzip]"
    similarity_threshold_duplicate: "similarity threshold for duplicate haplotigs [0.75]"
    min_number_overlapped: "min number of overlapped reads for duplicate haplotigs [1]"
    purge_cov: "coverage upper bound of Purge-dups [auto]"
    high_het: "enable this mode for high heterozygosity sample [experimental, not stable]"
    hone: "file names of Hi-C R1  [r1_1.fq,r1_2.fq,...]"
    h_two: "file names of Hi-C R2  [r2_1.fq,r2_2.fq,...]"
    in_one_dot_fq: ""
    in_two_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}