version 1.0

task CoolboxPlot {
  input {
    Boolean? genome_range
    Boolean? genome_range_two
  }
  command <<<
    coolbox plot \
      ~{if (genome_range) then "--genome_range" else ""} \
      ~{if (genome_range_two) then "--genome_range2" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.5--py_0"
  }
  parameter_meta {
    genome_range: "=[4mGENOME_RANGE[0m\\nType: Optional[]\\nDefault: None\\nGenome range string, like \\\"chr9:4000000-6000000\\\"."
    genome_range_two: "=[4mGENOME_RANGE2[0m\\nType: Optional[]\\nDefault: None\\nGenome range string, like \\\"chr9:4000000-6000000\\\"."
  }
  output {
    File out_stdout = stdout()
  }
}