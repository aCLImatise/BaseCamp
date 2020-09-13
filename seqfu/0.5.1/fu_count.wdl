version 1.0

task Fucount {
  input {
    String options_dot
    String sorting
    String other
  }
  command <<<
    fu_count \
      ~{options_dot} \
      ~{sorting} \
      ~{other}
  >>>
  parameter_meta {
    options_dot: "The table \\\"key\\\" is the absolute path of each input file, but the printed"
    sorting: "*-s, --sortby*\\nSort by field: 'order' (default, that is the order of the input\\nfiles as supplied by the user), 'count' (number of sequences),\\n'name' (filename). By default will be descending for numeric fields,\\nascending for 'path'. See \\\"-r, --reverse\\\".\\n*-r, --reverse*\\nReverse the sorting order."
    other: "*-f, --fastx*\\nForce FASTX reader also for files ending by .fastq or .fq (by\\ndefault would use getFastqRead() )\\n*-v, --verbose*\\nIncrease verbosity\\n*-h, --help*\\nDisplay this help page"
  }
  output {
    File out_stdout = stdout()
  }
}