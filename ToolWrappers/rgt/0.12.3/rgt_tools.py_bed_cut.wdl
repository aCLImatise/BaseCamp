version 1.0

task RgttoolspyBedCut {
  input {
    File? input_bed_file
    String? output_bed_name
    File? define_target_file
    Boolean? strandspecific
  }
  command <<<
    rgt_tools_py bed_cut \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_name) then ("-o " +  '"' + output_bed_name + '"') else ""} \
      ~{if defined(define_target_file) then ("-t " +  '"' + define_target_file + '"') else ""} \
      ~{if (strandspecific) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_name: "Output BED name."
    define_target_file: "Define the target BED file for cutting."
    strandspecific: "Strand-specific."
  }
  output {
    File out_stdout = stdout()
  }
}