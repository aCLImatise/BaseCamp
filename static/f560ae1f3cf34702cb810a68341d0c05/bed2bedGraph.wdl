version 1.0

task Bed2bedGraph.pl {
  input {
    Boolean? bed_file_conversion
    Boolean? file_containing_sizes
    Boolean? type_bed_file
    Boolean? file_standard_bed
    Boolean? man
  }
  command <<<
    bed2bedGraph.pl \
      ~{true="-f" false="" bed_file_conversion} \
      ~{true="-c" false="" file_containing_sizes} \
      ~{true="-t" false="" type_bed_file} \
      ~{true="-a" false="" file_standard_bed} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    bed_file_conversion: "BED file for conversion."
    file_containing_sizes: "File containing chromosome sizes"
    type_bed_file: "Type of bed file (e.g. sample name, replicate name, condition, ...)"
    file_standard_bed: "Whether file is a standard bed or extended bed, 'extended' for extended bed"
    man: "Prints the manual page and exits"
  }
}