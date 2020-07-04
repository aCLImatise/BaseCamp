version 1.0

task GaasMakerMergeOutputsFromIndex.pl {
  input {
    String must
    String be
    String executed
    String in
    String var_4
    Directory folder
    String from
    String which
    String var_8
    String was
    String run
    String and
    String will
    String find
    String var_14
    String var_15
    String var_output
  }
  command <<<
    gaas_maker_merge_outputs_from_index.pl \
      ~{must} \
      ~{be} \
      ~{executed} \
      ~{in} \
      ~{var_4} \
      ~{folder} \
      ~{from} \
      ~{which} \
      ~{var_8} \
      ~{was} \
      ~{run} \
      ~{and} \
      ~{will} \
      ~{find} \
      ~{var_14} \
      ~{var_15} \
      ~{var_output}
  >>>
  parameter_meta {
    must: ""
    be: ""
    executed: ""
    in: ""
    var_4: ""
    folder: ""
    from: ""
    which: ""
    var_8: ""
    was: ""
    run: ""
    and: ""
    will: ""
    find: ""
    var_14: ""
    var_15: ""
    var_output: ""
  }
}