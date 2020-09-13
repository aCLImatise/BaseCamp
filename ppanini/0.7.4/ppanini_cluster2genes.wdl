version 1.0

task PpaniniCluster2genes {
  input {
    String? cd_hit
    String? var_output
    Boolean? json
  }
  command <<<
    ppanini_cluster2genes \
      ~{if defined(cd_hit) then ("--cd-hit " +  '"' + cd_hit + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (json) then "--json" else ""}
  >>>
  parameter_meta {
    cd_hit: "CD-HIT clusters output"
    var_output: ""
    json: ""
  }
  output {
    File out_stdout = stdout()
  }
}