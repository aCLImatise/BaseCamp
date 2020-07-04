version 1.0

task Map2slim {
  input {
    Boolean? will_force_mapslim
    Boolean? when_used_conjunction
    Boolean? mout_filem_will
    String show_names
  }
  command <<<
    map2slim \
      ~{show_names} \
      ~{true="-c" false="" will_force_mapslim} \
      ~{true="-t" false="" when_used_conjunction} \
      ~{true="-o" false="" mout_filem_will}
  >>>
  parameter_meta {
    will_force_mapslim: "This will force map2slim to give counts of the assoc file, rather than map it"
    when_used_conjunction: "When used in conjunction with [1m-c[0m will tab the output so that the indentation reflects the tree hierarchy in the slim file"
    mout_filem_will: "[1mout file[0m This will write the mapped assocs (or counts) to the specified file, rather than to the screen"
    show_names: "(Only works with -outmap) Show the names of the term in the slim mapping file"
  }
}