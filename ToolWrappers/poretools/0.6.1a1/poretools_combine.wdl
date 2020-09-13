version 1.0

task PoretoolsCombine {
  input {
    Boolean? quiet
    Int? name_output_tar
    String files
  }
  command <<<
    poretools combine \
      ~{files} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(name_output_tar) then ("-o " +  '"' + name_output_tar + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    name_output_tar: "The name of the output TAR archive for the set of FAST5 files."
    files: "The input FAST5 files."
  }
  output {
    File out_stdout = stdout()
  }
}