version 1.0

task Readcovplot {
  input {
    String? scafold_coordinates_instead
    String? only_print_line
    String bank
  }
  command <<<
    read_cov_plot \
      ~{bank} \
      ~{if defined(scafold_coordinates_instead) then ("-S " +  '"' + scafold_coordinates_instead + '"') else ""} \
      ~{if defined(only_print_line) then ("-n " +  '"' + only_print_line + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    scafold_coordinates_instead: "scafold coordinates instead of contig coordinates"
    only_print_line: "Only print every n-th line"
    bank: ""
  }
  output {
    File out_stdout = stdout()
  }
}