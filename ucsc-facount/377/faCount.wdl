version 1.0

task FaCount {
  input {
    Boolean? summary
    Boolean? din_uc
    Boolean? strands
  }
  command <<<
    faCount \
      ~{if (summary) then "-summary" else ""} \
      ~{if (din_uc) then "-dinuc" else ""} \
      ~{if (strands) then "-strands" else ""}
  >>>
  parameter_meta {
    summary: "show only summary statistics"
    din_uc: "include statistics on dinucletoide frequencies"
    strands: "count bases on both strands"
  }
  output {
    File out_stdout = stdout()
  }
}