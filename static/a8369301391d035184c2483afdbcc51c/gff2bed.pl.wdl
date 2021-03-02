version 1.0

task Gff2bedpl {
  input {
    Boolean? gff
    Boolean? feature
    File? out
    Boolean? man
  }
  command <<<
    gff2bed_pl \
      ~{if (gff) then "--gff" else ""} \
      ~{if (feature) then "--feature" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff: "Input GFF file."
    feature: "Specify feature type (eg. CDS,tRNA,rRNA,SBS, etc) to be extracted\\nfrom GFF3."
    out: "Output path."
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}