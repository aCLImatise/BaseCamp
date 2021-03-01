version 1.0

task RgttoolspyBedCheckUp {
  input {
    File? input_bed_file
    File? output_bed_file
    File? target_bed_file
    Int? define_length_bp
    String? organism
  }
  command <<<
    rgt_tools_py bed_check_up \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_file) then ("-o " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(target_bed_file) then ("-t " +  '"' + target_bed_file + '"') else ""} \
      ~{if defined(define_length_bp) then ("-l " +  '"' + define_length_bp + '"') else ""} \
      ~{if defined(organism) then ("-organism " +  '"' + organism + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_file: "Output BED file"
    target_bed_file: "Target BED file"
    define_length_bp: "Define the length (bp) to detect"
    organism: "Define the organism"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}