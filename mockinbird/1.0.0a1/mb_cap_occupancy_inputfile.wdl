version 1.0

task MbCapOccupancyInputfile {
  input {
    String? quantile
    String output_file
  }
  command <<<
    mb-cap-occupancy inputfile \
      ~{output_file} \
      ~{if defined(quantile) then ("--quantile " +  '"' + quantile + '"') else ""}
  >>>
  parameter_meta {
    quantile: ""
    output_file: ""
  }
}