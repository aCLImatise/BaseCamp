version 1.0

task IntrahostpyFws {
  input {
    String? loglevel
    String in_vcf
    String out_vcf
  }
  command <<<
    intrahost_py Fws \
      ~{in_vcf} \
      ~{out_vcf} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    loglevel: "Verboseness of output. [default: DEBUG]"
    in_vcf: "Input VCF file"
    out_vcf: "Output VCF file"
  }
  output {
    File out_stdout = stdout()
  }
}