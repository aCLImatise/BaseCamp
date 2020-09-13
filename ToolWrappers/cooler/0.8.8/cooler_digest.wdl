version 1.0

task CoolerDigest {
  input {
    File? out
    Boolean? header
    Boolean? rel_ids
  }
  command <<<
    cooler digest \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (rel_ids) then "--rel-ids" else ""}
  >>>
  parameter_meta {
    out: "Output file (defaults to stdout)"
    header: "Print the header of column names as the first row.\\n[default: False]"
    rel_ids: "[0|1]  Include a column of relative bin IDs for each\\nchromosome. Choose whether to report them as 0- or\\n1-based."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}