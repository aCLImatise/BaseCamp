version 1.0

task MbCapOccupancy {
  input {
    String? quantile
  }
  command <<<
    mb-cap-occupancy \
      ~{if defined(quantile) then ("--quantile " +  '"' + quantile + '"') else ""}
  >>>
  parameter_meta {
    quantile: "quantile [0, 1.0]"
  }
}