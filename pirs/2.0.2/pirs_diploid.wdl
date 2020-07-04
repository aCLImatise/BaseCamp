version 1.0

task PirsDiploid {
  input {
    String? snp_rate
    String? in_del_rate
    String? sv_rate
    String? transition_to_transversion_ratio
    String? output_prefix
    File? output_file
    String? output_file_type
    Boolean? no_logs
    String? random_seed
    Boolean? quiet
    String? options_dot_dot_dot
    String reference
  }
  command <<<
    pirs diploid \
      ~{options_dot_dot_dot} \
      ~{reference} \
      ~{if defined(snp_rate) then ("--snp-rate " +  '"' + snp_rate + '"') else ""} \
      ~{if defined(in_del_rate) then ("--indel-rate " +  '"' + in_del_rate + '"') else ""} \
      ~{if defined(sv_rate) then ("--sv-rate " +  '"' + sv_rate + '"') else ""} \
      ~{if defined(transition_to_transversion_ratio) then ("--transition-to-transversion-ratio " +  '"' + transition_to_transversion_ratio + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_file_type) then ("--output-file-type " +  '"' + output_file_type + '"') else ""} \
      ~{true="--no-logs" false="" no_logs} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    snp_rate: "A floating-point number in the interval [0, 1] that specifies the heterozygous SNP rate.  Default: 0.001"
    in_del_rate: "A floating-point number in the interval [0, 1] that specifies the heterozygous indel rate. Default: 0.0001"
    sv_rate: "A floating-point number in the interval [0, 1] that specifies the large-scale structural variation (insertion, deletion, inversion) rate in the diploid genome. Default: 0.000001"
    transition_to_transversion_ratio: "In a SNP, a transition is when a purine or pyrimidine is changed to one of the same (A <=> G, C <=> T) while a transversion is when a purine is changed into a pyrimidine or vice-versa.  This option specifies a floating-point number RATIO that gives the ratio of the transition probability to the transversion probability for simulated SNPs. Default: 2.0"
    output_prefix: "Use PREFIX as the prefix of the output file and logs. Default: \"pirs_diploid\""
    output_file: "Use FILE as the name of the output file. Use '-' for standard output; this also moves the informational messages from stdout to stderr."
    output_file_type: "The string \"text\" or \"gzip\" to specify the type of the output FASTA file containing the diploid copy of the genome, as well as the log files. Default: \"text\""
    no_logs: "Do not write the log files."
    random_seed: "Use SEED as the random seed. Default: time(NULL) * getpid()"
    quiet: "Do not print informational messages."
    options_dot_dot_dot: ""
    reference: ""
  }
}