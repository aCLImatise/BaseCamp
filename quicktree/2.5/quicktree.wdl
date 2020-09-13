version 1.0

task Quicktree {
  input {
    File? in
    String? out
    Boolean? upgma
    Boolean? kimura
    String? boot
    Boolean? print_version_exit
    Boolean? options
    String input_file
  }
  command <<<
    quicktree \
      ~{input_file} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (upgma) then "-upgma" else ""} \
      ~{if (kimura) then "-kimura" else ""} \
      ~{if defined(boot) then ("-boot " +  '"' + boot + '"') else ""} \
      ~{if (print_version_exit) then "-v" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    in: ": input file is a distance matrix in phylip format (m)\\nor an alignment in stockholm format* (a, default)"
    out: ": output is a distance matrix in phylip format (m) or\\na tree in New Hampshire format"
    upgma: ": Use the UPGMA method to construct the tree\\n(ignored for distance matrix outputs)"
    kimura: ": Use the kimura translation for pairwise distances\\n(ignored for distance matrix inputs)"
    boot: ": Calcuate bootstrap values with n iterations\\n(ignored for distance matrix outputs)"
    print_version_exit: ": print version and exit"
    options: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}