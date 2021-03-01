version 1.0

task IdentifyHMM {
  input {
    File? marker_db
    Boolean? perform_prodigal
    Boolean? cut_tc
    Float? set_evalue_used
    String thresholding
  }
  command <<<
    identifyHMM \
      ~{thresholding} \
      ~{if defined(marker_db) then ("--markerdb " +  '"' + marker_db + '"') else ""} \
      ~{if (perform_prodigal) then "--performProdigal" else ""} \
      ~{if (cut_tc) then "--cut_tc" else ""} \
      ~{if defined(set_evalue_used) then ("-E " +  '"' + set_evalue_used + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    marker_db: "Provide HMM file of markers. Markers should have a\\ndescriptive ID name."
    perform_prodigal: "Run Prodigal on input genome nucleotide FASTA file"
    cut_tc: "use hmm profiles TC trusted cutoffs to set all"
    set_evalue_used: "Set E-Value to be used in hmmsearch. Default: 1E-5"
    thresholding: "--outPrefix OUTPREFIX"
  }
  output {
    File out_stdout = stdout()
  }
}