version 1.0

task RgttoolspyBedDivide {
  input {
    Boolean? bed
    String? input_expression_table
    File? o_one
    File? o_two
    String? define_the_cutoff
    Int? define_mode_such
  }
  command <<<
    rgt_tools_py bed_divide \
      ~{if (bed) then "-bed" else ""} \
      ~{if defined(input_expression_table) then ("-t " +  '"' + input_expression_table + '"') else ""} \
      ~{if defined(o_one) then ("-o1 " +  '"' + o_one + '"') else ""} \
      ~{if defined(o_two) then ("-o2 " +  '"' + o_two + '"') else ""} \
      ~{if defined(define_the_cutoff) then ("-c " +  '"' + define_the_cutoff + '"') else ""} \
      ~{if defined(define_mode_such) then ("-m " +  '"' + define_mode_such + '"') else ""}
  >>>
  parameter_meta {
    bed: "Input BED file"
    input_expression_table: "Input expression table (Gene name should match the region name."
    o_one: "Output first BED file"
    o_two: "Output second BED file"
    define_the_cutoff: "Define the cutoff"
    define_mode_such: "Define the mode, such as mean, max, or min."
  }
  output {
    File out_stdout = stdout()
    File out_o_one = "${in_o_one}"
    File out_o_two = "${in_o_two}"
  }
}