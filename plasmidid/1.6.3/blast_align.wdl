version 1.0

task BlastAlign.sh {
  input {
    String? to_blast_against
    String? directory_default_same
    String? blast_identification_mandatory
    String? query_nucl_default
    String? database_nucl_default
    String? blast_analysis_default
    String? of_threads
    String? display_usage_message
  }
  command <<<
    blast_align.sh \
      ~{if defined(to_blast_against) then ("-d " +  '"' + to_blast_against + '"') else ""} \
      ~{if defined(directory_default_same) then ("-o " +  '"' + directory_default_same + '"') else ""} \
      ~{if defined(blast_identification_mandatory) then ("-p " +  '"' + blast_identification_mandatory + '"') else ""} \
      ~{if defined(query_nucl_default) then ("-q " +  '"' + query_nucl_default + '"') else ""} \
      ~{if defined(database_nucl_default) then ("-t " +  '"' + database_nucl_default + '"') else ""} \
      ~{if defined(blast_analysis_default) then ("-e " +  '"' + blast_analysis_default + '"') else ""} \
      ~{if defined(of_threads) then ("-T " +  '"' + of_threads + '"') else ""} \
      ~{if defined(display_usage_message) then ("-v " +  '"' + display_usage_message + '"') else ""}
  >>>
  parameter_meta {
    to_blast_against: "to blast against"
    directory_default_same: "directory, default same directory as query"
    blast_identification_mandatory: "for blast identification (mandatory) and output file name"
    query_nucl_default: "of query, nucl by default"
    database_nucl_default: "of database, nucl by default"
    blast_analysis_default: "for blast analysis, default 0.0001"
    of_threads: "of threads"
    display_usage_message: "-h display usage message"
  }
}