version 1.0

task Rfplasmid {
  input {
    String? species
    Directory? directory_input_fasta
    Boolean? species_list
    Boolean? jelly
    Directory? out
    Boolean? debug
    Boolean? training
    Int? threads
  }
  command <<<
    rfplasmid \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(directory_input_fasta) then ("--input " +  '"' + directory_input_fasta + '"') else ""} \
      ~{if (species_list) then "--specieslist" else ""} \
      ~{if (jelly) then "--jelly" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (training) then "--training" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rfplasmid:0.0.16--py_0"
  }
  parameter_meta {
    species: "define species (required)"
    directory_input_fasta: "directory with input fasta files (required)"
    species_list: "list of available species models"
    jelly: "run jellyfish as kmer-count (faster)"
    out: "specify output directory"
    debug: "no cleanup of intermediate files"
    training: "trainings mode Random Forest"
    threads: "specify number of threads to be used, default is max\\navailable threads up to 16 threads"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}