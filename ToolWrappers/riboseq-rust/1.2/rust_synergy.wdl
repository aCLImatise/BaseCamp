version 1.0

task RustSynergy {
  input {
    File? directory_path_outputfile
    String rust_amino_file
    String rust_tripeptide_file
  }
  command <<<
    rust_synergy \
      ~{rust_amino_file} \
      ~{rust_tripeptide_file} \
      ~{if defined(directory_path_outputfile) then ("-o " +  '"' + directory_path_outputfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_path_outputfile: "directory  path to outputfile, default is \\\"synergy\\\""
    rust_amino_file: "path to file produced from \\\"rust_amino\\\""
    rust_tripeptide_file: "path to file produced from \\\"rust_tripeptide\\\""
  }
  output {
    File out_stdout = stdout()
  }
}