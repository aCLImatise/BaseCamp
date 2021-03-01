version 1.0

task SplitMEM {
  input {
    File? load_sequence_file
    String? mem
    File? many_mems
    File? cdg
    Boolean? multi_fa
  }
  command <<<
    splitMEM \
      ~{if defined(load_sequence_file) then ("-file " +  '"' + load_sequence_file + '"') else ""} \
      ~{if defined(mem) then ("-mem " +  '"' + mem + '"') else ""} \
      ~{if defined(many_mems) then ("-manyMEMs " +  '"' + many_mems + '"') else ""} \
      ~{if defined(cdg) then ("-cdg " +  '"' + cdg + '"') else ""} \
      ~{if (multi_fa) then "-multiFa" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    load_sequence_file: "Load sequence from file"
    mem: "Locate MEMs at least this long"
    many_mems: "File of minimum MEM lengths"
    cdg: "Filename of compressed de Bruijn graph"
    multi_fa: "Indicates the input file is a multifasta file for pan-genome analysis"
  }
  output {
    File out_stdout = stdout()
  }
}