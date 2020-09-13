version 1.0

task RgttoolspyBedComplement {
  input {
    File? input_bed_file
    File? output_bed_file
    String? organism
  }
  command <<<
    rgt_tools_py bed_complement \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(organism) then ("-organism " +  '"' + organism + '"') else ""}
  >>>
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    organism: "Define the organism (necessary if input is a gene list)"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}