version 1.0

task Genotypepl {
  input {
    Directory? tmp
  }
  command <<<
    genotype_pl \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tmp: ": the tmp directory; If unspecified, use /usr/local/bin/tmp/"
  }
  output {
    File out_stdout = stdout()
  }
}