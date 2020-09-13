version 1.0

task ConvertToAtac {
  input {
    Int? two
    Int? one
    Boolean? f
    Int asm_file_one
    Int asm_file_two
    Int matches_dot_sim_four_db
    String matches_dot_atac
  }
  command <<<
    convertToAtac \
      ~{asm_file_one} \
      ~{asm_file_two} \
      ~{matches_dot_sim_four_db} \
      ~{matches_dot_atac} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if (f) then "-f" else ""}
  >>>
  parameter_meta {
    two: ""
    one: ""
    f: ""
    asm_file_one: ""
    asm_file_two: ""
    matches_dot_sim_four_db: ""
    matches_dot_atac: ""
  }
  output {
    File out_stdout = stdout()
  }
}