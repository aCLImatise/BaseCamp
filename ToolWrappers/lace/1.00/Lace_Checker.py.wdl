version 1.0

task LaceCheckerpy {
  input {
    Int? cores
    String super_file
    String super_transcript
  }
  command <<<
    Lace_Checker_py \
      ~{super_file} \
      ~{super_transcript} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cores: "The number of cores you wish to run the job on (default = 1)"
    super_file: "The name of the SuperDuper.fasta file created by"
    super_transcript: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}