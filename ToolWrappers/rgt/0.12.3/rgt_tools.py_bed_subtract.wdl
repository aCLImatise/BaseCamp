version 1.0

task RgttoolspyBedSubtract {
  input {
    File? input_bed_file
    String? output_bed_name
    File? define_bed_file
    Boolean? all
    Boolean? block_i
    Boolean? block_t
  }
  command <<<
    rgt_tools_py bed_subtract \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_bed_name) then ("-o " +  '"' + output_bed_name + '"') else ""} \
      ~{if defined(define_bed_file) then ("-t " +  '"' + define_bed_file + '"') else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (block_i) then "-blocki" else ""} \
      ~{if (block_t) then "-blockt" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bed_file: "Input BED file"
    output_bed_name: "Output BED name."
    define_bed_file: "Define the target BED file to subtract."
    all: "Subtract the whole region when it overlaps."
    block_i: "Read the blocks in input."
    block_t: "Read the blocks in target."
  }
  output {
    File out_stdout = stdout()
  }
}