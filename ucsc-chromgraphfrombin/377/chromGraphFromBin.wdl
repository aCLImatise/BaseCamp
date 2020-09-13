version 1.0

task ChromGraphFromBin {
  input {
    String? chrom
  }
  command <<<
    chromGraphFromBin \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""}
  >>>
  parameter_meta {
    chrom: "- restrict output to single chromosome"
  }
  output {
    File out_stdout = stdout()
  }
}