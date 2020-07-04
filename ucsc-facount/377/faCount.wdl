version 1.0

task FaCount {
  input {
    Boolean? summary
    Boolean? din_uc
    Boolean? strands
    File file
  }
  command <<<
    faCount \
      ~{file} \
      ~{true="-summary" false="" summary} \
      ~{true="-dinuc" false="" din_uc} \
      ~{true="-strands" false="" strands}
  >>>
  parameter_meta {
    summary: "show only summary statistics"
    din_uc: "include statistics on dinucletoide frequencies"
    strands: "count bases on both strands"
    file: ""
  }
}