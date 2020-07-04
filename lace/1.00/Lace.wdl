version 1.0

task Lace.py {
  input {
    String? cores
    Boolean? alternate
    Boolean? tidy
    Int? max_tran
    String? output_dir
    String genome_file
    String cluster_file
  }
  command <<<
    Lace.py \
      ~{genome_file} \
      ~{cluster_file} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{true="--alternate" false="" alternate} \
      ~{true="--tidy" false="" tidy} \
      ~{if defined(max_tran) then ("--maxTran " +  '"' + max_tran + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    cores: "The number of cores you wish to run the job on (default = 1)"
    alternate: "Create alternate annotations and create metrics on success of SuperTranscript Building"
    tidy: "Move intermediate fasta files into folder: SuperFiles after running"
    max_tran: "Set a maximum for the number of transcripts from a cluster to be included for building the SuperTranscript (default=50)."
    output_dir: "Output Directory"
    genome_file: "The name of the fasta file containing all transcripts"
    cluster_file: "The name of the text file with the transcript to cluster mapping"
  }
}