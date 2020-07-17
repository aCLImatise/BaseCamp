version 1.0

task MetileneOutput.pl {
  input {
    Boolean? pathprefix_output_files
    Boolean? maximum_adj_qvalue
    Boolean? minimum_cpgs_default
    Boolean? minimum_mean_methylation
    Boolean? minimum_length_dmr
    Boolean? name_group_default
    Boolean? name_group_b
    String? q
    String? number
  }
  command <<<
    metilene_output.pl \
      ~{number} \
      ~{true="-o" false="" pathprefix_output_files} \
      ~{true="-p" false="" maximum_adj_qvalue} \
      ~{true="-c" false="" minimum_cpgs_default} \
      ~{true="-d" false="" minimum_mean_methylation} \
      ~{true="-l" false="" minimum_length_dmr} \
      ~{true="-a" false="" name_group_default} \
      ~{true="-b" false="" name_group_b} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    pathprefix_output_files: "path/prefix of output files (default: input_path/)"
    maximum_adj_qvalue: "maximum (<) adj. p-value (q-value) for output of significant DMRs (default: 0.05)"
    minimum_cpgs_default: "minimum (>=) cpgs (default:10)"
    minimum_mean_methylation: "minimum mean methylation difference (>=) (default:0.1)"
    minimum_length_dmr: "minimum length of DMR [nt] (>=) (post-processing, default: 0)"
    name_group_default: "name of group A (default:\"g1\")"
    name_group_b: "name of group B (default:\"g2\")"
    q: ""
    number: ""
  }
}