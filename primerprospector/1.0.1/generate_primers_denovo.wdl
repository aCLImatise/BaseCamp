version 1.0

task GeneratePrimersDenovo.py {
  input {
    String? target_seqs
    String? output_file_path
  }
  command <<<
    generate_primers_denovo.py \
      ~{if defined(target_seqs) then ("--target_seqs " +  '"' + target_seqs + '"') else ""} \
      ~{if defined(output_file_path) then ("--output_filepath " +  '"' + output_file_path + '"') else ""}
  >>>
  parameter_meta {
    target_seqs: "Target aligned fasta sequence files to find conserved sites for primer design.  Separate multiple files with a colon. [REQUIRED]"
    output_file_path: "name of output filepath to write details about conserved sequence sites. [REQUIRED]"
  }
}