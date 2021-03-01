version 1.0

task Pylprotpredictor {
  input {
    File? genome
    File? path_output_directory
    File? reference_fast_a_db
    File? reference_dm_nd_db
  }
  command <<<
    pylprotpredictor \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(path_output_directory) then ("--output " +  '"' + path_output_directory + '"') else ""} \
      ~{if defined(reference_fast_a_db) then ("--reference_fasta_db " +  '"' + reference_fast_a_db + '"') else ""} \
      ~{if defined(reference_dm_nd_db) then ("--reference_dmnd_db " +  '"' + reference_dm_nd_db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome: "path to a FASTA file with full or contig sequences of\\na genome to analyze"
    path_output_directory: "path to the output directory"
    reference_fast_a_db: "path to FASTA file with reference database"
    reference_dm_nd_db: "path to Diamond formatted file with reference database\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}