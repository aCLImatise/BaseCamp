version 1.0

task PirsDiploid {
  input {
    Int? snp_rate
    Int? in_del_rate
    Int? sv_rate
    Int? transition_to_transversion_ratio
    File? output_prefix
    File? output_file
    File? output_file_type
    Boolean? no_logs
    String? random_seed
    Boolean? quiet
    Int one_bp
    Int two_bp
    Int three_bp
    Int four_bp
    Int five_bp
    Int six_bp
    Int one_zero_zero_bp
    Int two_zero_zero_bp
    Int five_zero_zero_bp
    Int one_zero_zero_zero_bp
    Int two_zero_zero_zero_bp
  }
  command <<<
    pirs diploid \
      ~{one_bp} \
      ~{two_bp} \
      ~{three_bp} \
      ~{four_bp} \
      ~{five_bp} \
      ~{six_bp} \
      ~{one_zero_zero_bp} \
      ~{two_zero_zero_bp} \
      ~{five_zero_zero_bp} \
      ~{one_zero_zero_zero_bp} \
      ~{two_zero_zero_zero_bp} \
      ~{if defined(snp_rate) then ("--snp-rate " +  '"' + snp_rate + '"') else ""} \
      ~{if defined(in_del_rate) then ("--indel-rate " +  '"' + in_del_rate + '"') else ""} \
      ~{if defined(sv_rate) then ("--sv-rate " +  '"' + sv_rate + '"') else ""} \
      ~{if defined(transition_to_transversion_ratio) then ("--transition-to-transversion-ratio " +  '"' + transition_to_transversion_ratio + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_file_type) then ("--output-file-type " +  '"' + output_file_type + '"') else ""} \
      ~{if (no_logs) then "--no-logs" else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    snp_rate: "A floating-point number in the interval [0, 1] that\\nspecifies the heterozygous SNP rate.  Default: 0.001"
    in_del_rate: "A floating-point number in the interval [0, 1] that\\nspecifies the heterozygous indel rate.\\nDefault: 0.0001"
    sv_rate: "A floating-point number in the interval [0, 1] that\\nspecifies the large-scale structural variation\\n(insertion, deletion, inversion) rate in the diploid\\ngenome. Default: 0.000001"
    transition_to_transversion_ratio: "In a SNP, a transition is when a purine or pyrimidine\\nis changed to one of the same (A <=> G, C <=> T)\\nwhile a transversion is when a purine is changed\\ninto a pyrimidine or vice-versa.  This option\\nspecifies a floating-point number RATIO that gives\\nthe ratio of the transition probability to the\\ntransversion probability for simulated SNPs.\\nDefault: 2.0"
    output_prefix: "Use PREFIX as the prefix of the output file and logs.\\nDefault: \\\"pirs_diploid\\\""
    output_file: "Use FILE as the name of the output file. Use '-'\\nfor standard output; this also moves the\\ninformational messages from stdout to stderr."
    output_file_type: "The string \\\"text\\\" or \\\"gzip\\\" to specify the type of\\nthe output FASTA file containing the diploid copy\\nof the genome, as well as the log files.\\nDefault: \\\"text\\\""
    no_logs: "Do not write the log files."
    random_seed: "Use SEED as the random seed. Default:\\ntime(NULL) * getpid()"
    quiet: "Do not print informational messages."
    one_bp: "64.82%"
    two_bp: "17.17%"
    three_bp: "7.20%"
    four_bp: "7.29%"
    five_bp: "2.18%"
    six_bp: "1.34%"
    one_zero_zero_bp: "70%"
    two_zero_zero_bp: "20%"
    five_zero_zero_bp: "7%"
    one_zero_zero_zero_bp: "2%"
    two_zero_zero_zero_bp: "1%"
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix = "${in_output_prefix}"
    File out_output_file = "${in_output_file}"
    File out_output_file_type = "${in_output_file_type}"
  }
}