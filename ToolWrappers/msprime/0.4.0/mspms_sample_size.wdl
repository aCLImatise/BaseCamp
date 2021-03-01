version 1.0

task MspmsSampleSize {
  input {
    Boolean? trees
    String? mutation_rate
    Boolean? v
    String ms_pms
  }
  command <<<
    mspms sample_size \
      ~{ms_pms} \
      ~{if (trees) then "--trees" else ""} \
      ~{if defined(mutation_rate) then ("--mutation-rate " +  '"' + mutation_rate + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trees: ""
    mutation_rate: ""
    v: ""
    ms_pms: ""
  }
  output {
    File out_stdout = stdout()
  }
}