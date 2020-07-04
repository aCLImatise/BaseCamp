version 1.0

task IdentifyHMM {
  input {
    String? marker_db
    Boolean? perform_prodigal
    Boolean? cut_tc
    String? out_prefix
    String? set_evalue_used
    String target_files_provide
  }
  command <<<
    identifyHMM \
      ~{target_files_provide} \
      ~{if defined(marker_db) then ("--markerdb " +  '"' + marker_db + '"') else ""} \
      ~{true="--performProdigal" false="" perform_prodigal} \
      ~{true="--cut_tc" false="" cut_tc} \
      ~{if defined(out_prefix) then ("--outPrefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(set_evalue_used) then ("-E " +  '"' + set_evalue_used + '"') else ""}
  >>>
  parameter_meta {
    marker_db: "Provide HMM file of markers. Markers should have a descriptive ID name."
    perform_prodigal: "Run Prodigal on input genome nucleotide FASTA file"
    cut_tc: "use hmm profiles TC trusted cutoffs to set all thresholding"
    out_prefix: "Provide prefix of names for marker output files."
    set_evalue_used: "Set E-Value to be used in hmmsearch. Default: 1E-5"
    target_files_provide: "Target file(s). Provide unifying text of desired genome(s). Ext must be 'fna' or 'faa'."
  }
}