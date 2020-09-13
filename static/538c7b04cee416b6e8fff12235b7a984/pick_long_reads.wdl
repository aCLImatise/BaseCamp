version 1.0

task PickLongReads {
  input {
    String? input_files
    Int? length
    String? var_output
    Boolean? cut_stars
  }
  command <<<
    pick_long_reads \
      ~{if defined(input_files) then ("--input_files " +  '"' + input_files + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (cut_stars) then "--cut_stars" else ""}
  >>>
  parameter_meta {
    input_files: ""
    length: ""
    var_output: ""
    cut_stars: ""
  }
  output {
    File out_stdout = stdout()
  }
}