version 1.0

task Phenotypingpy {
  input {
    File? input_genome_be
    String? evalue
    String? json
  }
  command <<<
    phenotyping_py \
      ~{if defined(input_genome_be) then ("--input " +  '"' + input_genome_be + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_genome_be: "Input genome. Must be either: a valid contigs file or\\na json genome file."
    evalue: "E-value for BLAST to Pathways DB"
    json: "Specifies that you're using an already processed JSON\\ninput.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}