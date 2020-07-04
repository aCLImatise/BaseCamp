version 1.0

task MbCapOccupancyOutputfile {
  input {
    String? quantile
    String mb_cap_occupancy
    String input_file
    String output_file
  }
  command <<<
    mb-cap-occupancy outputfile \
      ~{mb_cap_occupancy} \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(quantile) then ("--quantile " +  '"' + quantile + '"') else ""}
  >>>
  parameter_meta {
    quantile: ""
    mb_cap_occupancy: ""
    input_file: ""
    output_file: ""
  }
}