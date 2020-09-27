version 1.0

task SplitMEM {
  input {
    File? file
    String? mem
    File? many_mems
    File? cdg
    Boolean? multi_fa
  }
  command <<<
    splitMEM \
      ~{if defined(file) then ("-file " +  '"' + file + '"') else ""} \
      ~{if defined(mem) then ("-mem " +  '"' + mem + '"') else ""} \
      ~{if defined(many_mems) then ("-manyMEMs " +  '"' + many_mems + '"') else ""} \
      ~{if defined(cdg) then ("-cdg " +  '"' + cdg + '"') else ""} \
      ~{if (multi_fa) then "-multiFa" else ""}
  >>>
  parameter_meta {
    file: "Load sequence from file"
    mem: "Locate MEMs at least this long"
    many_mems: "File of minimum MEM lengths"
    cdg: "Filename of compressed de Bruijn graph"
    multi_fa: "Indicates the input file is a multifasta file for pan-genome analysis"
  }
  output {
    File out_stdout = stdout()
  }
}