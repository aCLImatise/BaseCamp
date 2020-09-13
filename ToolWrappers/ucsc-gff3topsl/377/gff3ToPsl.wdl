version 1.0

task Gff3ToPsl {
  input {
    Boolean? drop_q
    Boolean? dropt
    Int in_gff_three
    String out_dot_psl
  }
  command <<<
    gff3ToPsl \
      ~{in_gff_three} \
      ~{out_dot_psl} \
      ~{if (drop_q) then "-dropQ" else ""} \
      ~{if (dropt) then "-dropT" else ""}
  >>>
  parameter_meta {
    drop_q: "drop record when query not found in queryChromSizes"
    dropt: "drop record when target not found in targetChromSizes"
    in_gff_three: "GFF3 formatted file with Gap attribute in match records"
    out_dot_psl: "PSL formatted output"
  }
  output {
    File out_stdout = stdout()
  }
}