version 1.0

task Makeprotseq {
  input {
    File? pep_stats_file
    Boolean? amount
    Boolean? length
    Boolean? use_insert
    Float six_dot_six_dot_zero_dot_zero
  }
  command <<<
    _makeprotseq \
      ~{six_dot_six_dot_zero_dot_zero} \
      ~{if (pep_stats_file) then "-pepstatsfile" else ""} \
      ~{if (amount) then "-amount" else ""} \
      ~{if (length) then "-length" else ""} \
      ~{if (use_insert) then "-useinsert" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pep_stats_file: "infile     This file should be a pepstats output file.\\nProtein sequences will be created with the\\ncomposition in the pepstats output file."
    amount: "integer    [100] Number of sequences created (Integer 1\\nor more)"
    length: "integer    [100] Length of each sequence (Integer 1 or\\nmore)"
    use_insert: "toggle     [N] Do you want to make an insert"
    six_dot_six_dot_zero_dot_zero: "Standard (Mandatory) qualifiers (* if not always prompted):"
  }
  output {
    File out_stdout = stdout()
    File out_pep_stats_file = "${in_pep_stats_file}"
  }
}