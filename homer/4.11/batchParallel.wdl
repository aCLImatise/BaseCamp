version 1.0

task BatchParallel.pl {
  input {
    File? f
    String var_1
    String output_suffix_vertical_line_none
    String this
    String will
    String run
    String var_6
    String var_7
    String for
    String each
    File file
    String provided
    String after
    String var_13
  }
  command <<<
    batchParallel.pl \
      ~{var_1} \
      ~{output_suffix_vertical_line_none} \
      ~{this} \
      ~{will} \
      ~{run} \
      ~{var_6} \
      ~{var_7} \
      ~{for} \
      ~{each} \
      ~{file} \
      ~{provided} \
      ~{after} \
      ~{var_13} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    var_1: ""
    output_suffix_vertical_line_none: ""
    this: ""
    will: ""
    run: ""
    var_6: ""
    var_7: ""
    for: ""
    each: ""
    file: ""
    provided: ""
    after: ""
    var_13: ""
  }
}