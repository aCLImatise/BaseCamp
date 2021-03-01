version 1.0

task Trmap {
  input {
    String? write_output_outfile
    Boolean? report_percentages_withoutclassification
    Boolean? strict_match
    String ref_gff
  }
  command <<<
    trmap \
      ~{ref_gff} \
      ~{if defined(write_output_outfile) then ("-o " +  '"' + write_output_outfile + '"') else ""} \
      ~{if (report_percentages_withoutclassification) then "-S" else ""} \
      ~{if (strict_match) then "--strict-match" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_output_outfile: "write output to <outfile> instead of stdout"
    report_percentages_withoutclassification: "report only simple reference overlap percentages, without\\nclassification (one line per query)"
    strict_match: ": when intron chains match, the '=' overlap code is assigned\\nwhen all exons also match, otherwise assign the '~' code\\n"
    ref_gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}