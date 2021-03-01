version 1.0

task MetileneOutputpl {
  input {
    Boolean? pathprefix_output_files
    Boolean? maximum_adj_pvalue
    Boolean? minimum_cpgs_default
    Boolean? minimum_mean_methylation
    Boolean? minimum_length_dmr
    Boolean? name_group_default
    Boolean? name_group_b
    File? q
    Int? number
  }
  command <<<
    metilene_output_pl \
      ~{number} \
      ~{if (pathprefix_output_files) then "-o" else ""} \
      ~{if (maximum_adj_pvalue) then "-p" else ""} \
      ~{if (minimum_cpgs_default) then "-c" else ""} \
      ~{if (minimum_mean_methylation) then "-d" else ""} \
      ~{if (minimum_length_dmr) then "-l" else ""} \
      ~{if (name_group_default) then "-a" else ""} \
      ~{if (name_group_b) then "-b" else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pathprefix_output_files: "path/prefix of output files (default: input_path/)"
    maximum_adj_pvalue: "maximum (<) adj. p-value (q-value) for output of significant DMRs (default: 0.05)"
    minimum_cpgs_default: "minimum (>=) cpgs (default:10)"
    minimum_mean_methylation: "minimum mean methylation difference (>=) (default:0.1)"
    minimum_length_dmr: "minimum length of DMR [nt] (>=) (post-processing, default: 0)"
    name_group_default: "name of group A (default:\\\"g1\\\")"
    name_group_b: "name of group B (default:\\\"g2\\\")"
    q: ""
    number: ""
  }
  output {
    File out_stdout = stdout()
  }
}