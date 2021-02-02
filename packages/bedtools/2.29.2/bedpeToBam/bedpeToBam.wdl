version 1.0

task BedpeToBam {
  input {
    Boolean? mapq
    Boolean? ub_am
    String? g
    String? i
  }
  command <<<
    bedpeToBam \
      ~{if (mapq) then "-mapq" else ""} \
      ~{if (ub_am) then "-ubam" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    mapq: "Set the mappinq quality for the BAM records.\\n(INT) Default: 255"
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM."
    g: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}