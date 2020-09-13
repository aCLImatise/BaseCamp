version 1.0

task MbcapoccupancyInputfile {
  input {
    String? quantile
    String output_file
  }
  command <<<
    mb_cap_occupancy inputfile \
      ~{output_file} \
      ~{if defined(quantile) then ("--quantile " +  '"' + quantile + '"') else ""}
  >>>
  parameter_meta {
    quantile: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}