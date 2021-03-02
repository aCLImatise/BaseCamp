version 1.0

task MetaCHIPUpdateHmms {
  input {
    File? hmm
    File? p_db
    Directory? t_db
  }
  command <<<
    MetaCHIP update_hmms \
      ~{if defined(hmm) then ("-hmm " +  '"' + hmm + '"') else ""} \
      ~{if defined(p_db) then ("-p_db " +  '"' + p_db + '"') else ""} \
      ~{if defined(t_db) then ("-t_db " +  '"' + t_db + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0"
  }
  parameter_meta {
    hmm: "MetaCHIP_phylo.hmm file"
    p_db: "Pfam db file, e.g. Pfam-A.hmm"
    t_db: "TIGRFAMs db folder, e.g. TIGRFAMs_14.0_HMM"
  }
  output {
    File out_stdout = stdout()
  }
}