version 1.0

task ConvertToAtac {
  input {
    Boolean? f
    String? one
    String? two
    String asm_file_one
    String asm_file_two
    String matches_dot_sim_four_db
    String matches_dot_atac
  }
  command <<<
    convertToAtac \
      ~{asm_file_one} \
      ~{asm_file_two} \
      ~{matches_dot_sim_four_db} \
      ~{matches_dot_atac} \
      ~{true="-f" false="" f} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    one: ""
    two: ""
    asm_file_one: ""
    asm_file_two: ""
    matches_dot_sim_four_db: ""
    matches_dot_atac: ""
  }
}