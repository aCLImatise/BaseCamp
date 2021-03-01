version 1.0

task CreateCoordinates {
  input {
    String? input_vcf
    String? output_coordinates_write
  }
  command <<<
    create_coordinates \
      ~{if defined(input_vcf) then ("--input_vcf " +  '"' + input_vcf + '"') else ""} \
      ~{if defined(output_coordinates_write) then ("--output " +  '"' + output_coordinates_write + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_vcf: "VCF input"
    output_coordinates_write: "output coordinates to write (default: stdout)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}