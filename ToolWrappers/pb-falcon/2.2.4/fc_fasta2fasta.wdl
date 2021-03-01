version 1.0

task FcFasta2fasta {
  input {
    Boolean? gzip
    Int? z_mw_start
  }
  command <<<
    fc_fasta2fasta \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if defined(z_mw_start) then ("--zmw-start " +  '"' + z_mw_start + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gzip: "Compress intermediate fasta with gzip. (Not currently\\nimplemented.)"
    z_mw_start: "Ignore the zmw number in the fasta header. Instead,\\nuse a global counter, starting at this numer.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}