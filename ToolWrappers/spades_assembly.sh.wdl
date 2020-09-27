version 1.0

task SpadesAssemblysh {
  input {
    Int? file_mandatoryp_rpaired
  }
  command <<<
    spades_assembly_sh \
      ~{if defined(file_mandatoryp_rpaired) then ("-p " +  '"' + file_mandatoryp_rpaired + '"') else ""}
  >>>
  parameter_meta {
    file_mandatoryp_rpaired: "file (mandatory)\\n-P R2_paired file (mandatory)\\n-k kmers, supplied as numbers sepparated by number or one flag per number, default: 21,33,55,77,99,127\\n-o output directory (optional)\\n-f file name\\n-s sample name (mandatory)\\n-g group name (optional). If unset, samples will be gathered in NO_GROUP group\\n-q quick_mode: look for files in a folder SUPPLIED with \\\"paired\\\" term\\n-c clean mode: remove unnecesary temporary folders\\n-T threads, default 1\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}