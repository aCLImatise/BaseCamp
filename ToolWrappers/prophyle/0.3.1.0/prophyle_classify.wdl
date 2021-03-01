version 1.0

task ProphyleClassify {
  input {
    Int? kmer_length
    String? measure_hhit_countcnormcoverage
    String? output_format
    File? log_file
    Boolean? incorporate_sequences_qualities
    Boolean? annotate_assignments_using
    Boolean? replace_read_assignments
    Boolean? replace_kmer_matches
    Boolean? mimic_kraken_equivalent
    Boolean? use_c_impl
    Boolean? force_restarted_mode
    Boolean? advanced_configuration_json
  }
  command <<<
    prophyle classify \
      ~{if defined(kmer_length) then ("-k " +  '"' + kmer_length + '"') else ""} \
      ~{if defined(measure_hhit_countcnormcoverage) then ("-m " +  '"' + measure_hhit_countcnormcoverage + '"') else ""} \
      ~{if defined(output_format) then ("-f " +  '"' + output_format + '"') else ""} \
      ~{if defined(log_file) then ("-l " +  '"' + log_file + '"') else ""} \
      ~{if (incorporate_sequences_qualities) then "-P" else ""} \
      ~{if (annotate_assignments_using) then "-A" else ""} \
      ~{if (replace_read_assignments) then "-L" else ""} \
      ~{if (replace_kmer_matches) then "-X" else ""} \
      ~{if (mimic_kraken_equivalent) then "-M" else ""} \
      ~{if (use_c_impl) then "-C" else ""} \
      ~{if (force_restarted_mode) then "-K" else ""} \
      ~{if (advanced_configuration_json) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kmer_length: "k-mer length [detect automatically from the index]"
    measure_hhit_countcnormcoverage: "measure: h1=hit count, c1=coverage, h2=norm.hit count,\\nc2=norm.coverage [h1]"
    output_format: "output format [sam]"
    log_file: "log file"
    incorporate_sequences_qualities: "incorporate sequences and qualities into SAM records"
    annotate_assignments_using: "annotate assignments (using tax. information from NHX)"
    replace_read_assignments: "replace read assignments by their LCA"
    replace_kmer_matches: "replace k-mer matches by their LCA"
    mimic_kraken_equivalent: "mimic Kraken (equivalent to \\\"-m h1 -f kraken -L -X\\\")"
    use_c_impl: "use C++ impl. of the assignment algorithm (experimental)"
    force_restarted_mode: "force restarted search mode"
    advanced_configuration_json: "[STR [STR ...]]  advanced configuration (a JSON dictionary)"
  }
  output {
    File out_stdout = stdout()
  }
}