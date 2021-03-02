version 1.0

task Lacepy {
  input {
    Int? cores
    Boolean? alternate
    Boolean? tidy
    Int? max_tran
    Directory? output_dir
    String genome_file
    String cluster_file
  }
  command <<<
    Lace_py \
      ~{genome_file} \
      ~{cluster_file} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (alternate) then "--alternate" else ""} \
      ~{if (tidy) then "--tidy" else ""} \
      ~{if defined(max_tran) then ("--maxTran " +  '"' + max_tran + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cores: "The number of cores you wish to run the job on\\n(default = 1)"
    alternate: "Create alternate annotations and create metrics on\\nsuccess of SuperTranscript Building"
    tidy: "Move intermediate fasta files into folder: SuperFiles\\nafter running"
    max_tran: "Set a maximum for the number of transcripts from a\\ncluster to be included for building the\\nSuperTranscript (default=50)."
    output_dir: "Output Directory\\n"
    genome_file: "The name of the fasta file containing all transcripts"
    cluster_file: "The name of the text file with the transcript to\\ncluster mapping"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}