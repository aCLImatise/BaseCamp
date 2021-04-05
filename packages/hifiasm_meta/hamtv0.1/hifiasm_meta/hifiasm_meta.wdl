version 1.0

task HifiasmMeta {
  input {
    String? prefix_output_files
    String? prefix_its_different
    Boolean? ignore_saved_correction
    Int? number_of_threads
    Int? length_adapters_removed
    Boolean? enable_read_selection
    Boolean? force_pre_ovec
    Boolean? low_q_one_zero
    Boolean? low_q_five
    Boolean? low_q_three
    Int? kmer_length_be
    Int? minimizer_window_size
    Int? number_bits_bloom
    Float? drop_kmers_occurring
    Int? consider_maxdcoveragen_overlaps
    Int? round_of_correction
    Int? round_assembly_cleaning
    Int? remove_tip_unitigs
    Float? max_overlap_drop
    Float? min_overlap_drop
    Boolean? ban_assembly_terminate
    String? write_paf
    Boolean? dump_all_ovlp
    Boolean? write_ec
    Float zero_dot_one_r_zero_three_five
  }
  command <<<
    hifiasm_meta \
      ~{zero_dot_one_r_zero_three_five} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(prefix_its_different) then ("-B " +  '"' + prefix_its_different + '"') else ""} \
      ~{if (ignore_saved_correction) then "-i" else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(length_adapters_removed) then ("-z " +  '"' + length_adapters_removed + '"') else ""} \
      ~{if (enable_read_selection) then "-S" else ""} \
      ~{if (force_pre_ovec) then "--force-preovec" else ""} \
      ~{if (low_q_one_zero) then "--lowq-10" else ""} \
      ~{if (low_q_five) then "--lowq-5" else ""} \
      ~{if (low_q_three) then "--lowq-3" else ""} \
      ~{if defined(kmer_length_be) then ("-k " +  '"' + kmer_length_be + '"') else ""} \
      ~{if defined(minimizer_window_size) then ("-w " +  '"' + minimizer_window_size + '"') else ""} \
      ~{if defined(number_bits_bloom) then ("-f " +  '"' + number_bits_bloom + '"') else ""} \
      ~{if defined(drop_kmers_occurring) then ("-D " +  '"' + drop_kmers_occurring + '"') else ""} \
      ~{if defined(consider_maxdcoveragen_overlaps) then ("-N " +  '"' + consider_maxdcoveragen_overlaps + '"') else ""} \
      ~{if defined(round_of_correction) then ("-r " +  '"' + round_of_correction + '"') else ""} \
      ~{if defined(round_assembly_cleaning) then ("-a " +  '"' + round_assembly_cleaning + '"') else ""} \
      ~{if defined(remove_tip_unitigs) then ("-n " +  '"' + remove_tip_unitigs + '"') else ""} \
      ~{if defined(max_overlap_drop) then ("-x " +  '"' + max_overlap_drop + '"') else ""} \
      ~{if defined(min_overlap_drop) then ("-y " +  '"' + min_overlap_drop + '"') else ""} \
      ~{if (ban_assembly_terminate) then "-e" else ""} \
      ~{if defined(write_paf) then ("--write-paf " +  '"' + write_paf + '"') else ""} \
      ~{if (dump_all_ovlp) then "--dump-all-ovlp" else ""} \
      ~{if (write_ec) then "--write-ec" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hifiasm_meta:hamtv0.1--h8b12597_0"
  }
  parameter_meta {
    prefix_output_files: "prefix of output files [hifiasm_meta.asm]"
    prefix_its_different: "prefix of bin files, if it's different from -o [hifiasm_meta.asm]"
    ignore_saved_correction: "ignore saved read correction and overlaps"
    number_of_threads: "number of threads [1]"
    length_adapters_removed: "length of adapters that should be removed [0]"
    enable_read_selection: "enable read selection."
    force_pre_ovec: "enable and force read selection."
    low_q_one_zero: "lower 10% runtime kmer frequency threshold. [50]"
    low_q_five: "lower 5% runtime kmer frequency threshold. [50]"
    low_q_three: "lower 3% runtime kmer frequency threshold. [-1]"
    kmer_length_be: "k-mer length (must be <64) [51]"
    minimizer_window_size: "minimizer window size [51]"
    number_bits_bloom: "number of bits for bloom filter; 0 to disable [37]"
    drop_kmers_occurring: "drop k-mers occurring >FLOAT*coverage times [5.0]"
    consider_maxdcoveragen_overlaps: "consider up to max(-D*coverage,-N) overlaps for each oriented read [100]"
    round_of_correction: "round of correction [3]"
    round_assembly_cleaning: "round of assembly cleaning [4]"
    remove_tip_unitigs: "remove tip unitigs composed of <=INT reads [3]"
    max_overlap_drop: "max overlap drop ratio [0.8]"
    min_overlap_drop: "min overlap drop ratio [0.2]"
    ban_assembly_terminate: "ban assembly, i.e. terminate before generating string graph"
    write_paf: "overlaps (paf)."
    dump_all_ovlp: "dump all overlaps ever calculated in the final overlapping (paf)."
    write_ec: "dump error corrected reads (fasta)."
    zero_dot_one_r_zero_three_five: ""
  }
  output {
    File out_stdout = stdout()
  }
}