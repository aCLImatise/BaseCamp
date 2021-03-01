version 1.0

task VirmetWolfpack {
  input {
    Directory? run
    File? single_fastq_file
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
      ~{if defined(single_fastq_file) then ("--file " +  '"' + single_fastq_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run: "Miseq run directory"
    single_fastq_file: "single fastq file"
    vir_met: ""
    var_command: ""
    wolfpack: ""
  }
  output {
    File out_stdout = stdout()
  }
}