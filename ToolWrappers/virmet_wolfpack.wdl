version 1.0

task VirmetWolfpack {
  input {
    Directory? run
    File? file
    String vir_met
    String var_command
    String wolfpack
  }
  command <<<
    virmet wolfpack \
      ~{vir_met} \
      ~{var_command} \
      ~{wolfpack} \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    run: "Miseq run directory"
    file: "single fastq file"
    vir_met: ""
    var_command: ""
    wolfpack: ""
  }
  output {
    File out_stdout = stdout()
  }
}