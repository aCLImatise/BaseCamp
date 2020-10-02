version 1.0

task MentalistDownloadEnterobase {
  input {
    File? db
    Int? kmer_size_type
    Int? threads
    Directory? output_folder_scheme
    String? scheme
    String? type
  }
  command <<<
    mentalist download_enterobase \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(kmer_size_type) then ("-k " +  '"' + kmer_size_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_folder_scheme) then ("--output " +  '"' + output_folder_scheme + '"') else ""} \
      ~{if defined(scheme) then ("--scheme " +  '"' + scheme + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    db: "Output file (kmer database)"
    kmer_size_type: "Kmer size (type: Int8)"
    threads: "Number of threads used in parallel. (type:\\nInt64, default: 2)"
    output_folder_scheme: "Output folder for the scheme Fasta files."
    scheme: "Letter identifying which scheme: (S)almonella,\\n(Y)ersinia, or (E)scherichia/Shigella."
    type: "Choose the type: 'cg' or 'wg' for cgMLST or\\nwgMLST scheme, respectively."
  }
  output {
    File out_stdout = stdout()
    File out_db = "${in_db}"
    Directory out_output_folder_scheme = "${in_output_folder_scheme}"
  }
}