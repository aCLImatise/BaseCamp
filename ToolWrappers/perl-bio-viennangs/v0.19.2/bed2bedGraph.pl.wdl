version 1.0

task Bed2bedGraphpl {
  input {
    Boolean? bed_file_conversion
    Boolean? file_containing_sizes
    Boolean? type_bed_file
    Boolean? file_standard_bed
    Boolean? man
  }
  command <<<
    bed2bedGraph_pl \
      ~{if (bed_file_conversion) then "-f" else ""} \
      ~{if (file_containing_sizes) then "-c" else ""} \
      ~{if (type_bed_file) then "-t" else ""} \
      ~{if (file_standard_bed) then "-a" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed_file_conversion: "BED file for conversion."
    file_containing_sizes: "File containing chromosome sizes"
    type_bed_file: "Type of bed file (e.g. sample name, replicate name, condition, ...)"
    file_standard_bed: "Whether file is a standard bed or extended bed, 'extended' for\\nextended bed"
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
  }
}