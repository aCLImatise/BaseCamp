version 1.0

task AlevinfryQuantFLAGS {
  input {
    String? tg_map
    String? input_dir
  }
  command <<<
    alevin_fry quant FLAGS \
      ~{if defined(tg_map) then ("--tg-map " +  '"' + tg_map + '"') else ""} \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0"
  }
  parameter_meta {
    tg_map: ""
    input_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}