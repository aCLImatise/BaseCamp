version 1.0

task PpaniniCluster2genes {
  input {
    String? cd_hit
    Boolean? json
    String? o
  }
  command <<<
    ppanini_cluster2genes \
      ~{if defined(cd_hit) then ("--cd-hit " +  '"' + cd_hit + '"') else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cd_hit: "CD-HIT clusters output"
    json: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}