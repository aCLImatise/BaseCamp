version 1.0

task Verifybamid2 {
  input {
    Boolean? svd_prefix
    Boolean? var_output
    String? reference
  }
  command <<<
    verifybamid2 \
      ~{if (svd_prefix) then "--SVDPrefix" else ""} \
      ~{if (var_output) then "--Output" else ""} \
      ~{if defined(reference) then ("--Reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    svd_prefix: "[/usr/local/share/verifybamid2-1.0.6-1/resource/1000g.100k.b38.vcf.gz.dat],"
    var_output: "[result]"
    reference: "required"
  }
  output {
    File out_stdout = stdout()
  }
}