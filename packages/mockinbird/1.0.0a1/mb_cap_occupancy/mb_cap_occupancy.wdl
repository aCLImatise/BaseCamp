version 1.0

task Mbcapoccupancy {
  input {
    Float? quantile
  }
  command <<<
    mb_cap_occupancy \
      ~{if defined(quantile) then ("--quantile " +  '"' + quantile + '"') else ""}
  >>>
  parameter_meta {
    quantile: "quantile [0, 1.0]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}