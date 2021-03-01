version 1.0

task BlastAlignsh {
  input {
    File? file_fasta_format
    String? to_blast_against
    Directory? directory_default_same
    File? blast_identification_mandatory
    String? query_nucl_default
    String? database_nucl_default
    Float? blast_analysis_default
    Int? of_threads
    String? usage_message
  }
  command <<<
    blast_align_sh \
      ~{if defined(file_fasta_format) then ("-i " +  '"' + file_fasta_format + '"') else ""} \
      ~{if defined(to_blast_against) then ("-d " +  '"' + to_blast_against + '"') else ""} \
      ~{if defined(directory_default_same) then ("-o " +  '"' + directory_default_same + '"') else ""} \
      ~{if defined(blast_identification_mandatory) then ("-p " +  '"' + blast_identification_mandatory + '"') else ""} \
      ~{if defined(query_nucl_default) then ("-q " +  '"' + query_nucl_default + '"') else ""} \
      ~{if defined(database_nucl_default) then ("-t " +  '"' + database_nucl_default + '"') else ""} \
      ~{if defined(blast_analysis_default) then ("-e " +  '"' + blast_analysis_default + '"') else ""} \
      ~{if defined(of_threads) then ("-T " +  '"' + of_threads + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_fasta_format: "file in FASTA format"
    to_blast_against: "to blast against"
    directory_default_same: "directory, default same directory as query"
    blast_identification_mandatory: "for blast identification (mandatory) and output file name"
    query_nucl_default: "of query, nucl by default"
    database_nucl_default: "of database, nucl by default"
    blast_analysis_default: "for blast analysis, default 0.0001"
    of_threads: "of threads"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
    File out_blast_identification_mandatory = "${in_blast_identification_mandatory}"
  }
}