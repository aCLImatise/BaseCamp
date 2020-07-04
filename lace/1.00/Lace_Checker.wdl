version 1.0

task LaceChecker.py {
  input {
    String? cores
    String super_file
  }
  command <<<
    Lace_Checker.py \
      ~{super_file} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    cores: "The number of cores you wish to run the job on (default = 1)"
    super_file: "The name of the SuperDuper.fasta file created by SuperTranscript"
  }
}