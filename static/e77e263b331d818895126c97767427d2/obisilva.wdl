version 1.0

task Obisilva {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    Boolean? ssu
    Boolean? lsu
    Boolean? parc
    Boolean? ref
    Boolean? nr
    Boolean? trunc
    String? local_db
    Boolean? _mintaxid_minimal
  }
  command <<<
    obisilva \
      ~{true="--DEBUG" false="" debug} \
      ~{true="--without-progress-bar" false="" without_progress_bar} \
      ~{true="--ssu" false="" ssu} \
      ~{true="--lsu" false="" lsu} \
      ~{true="--parc" false="" parc} \
      ~{true="--ref" false="" ref} \
      ~{true="--nr" false="" nr} \
      ~{true="--trunc" false="" trunc} \
      ~{if defined(local_db) then ("--localdb " +  '"' + local_db + '"') else ""} \
      ~{true="-m" false="" _mintaxid_minimal}
  >>>
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    ssu: "specify that you are interested in the SSU database"
    lsu: "specify that you are interested in the LSU database"
    parc: "specify that you are interested in the parc version of the database"
    ref: "specify that you are interested in the reference version of the database"
    nr: "specify that you are interested in the non redundant version of the database"
    trunc: "specify that you are interested in the truncated version of database"
    local_db: "Local copy of the files located in the specified directory will be used instead of those present on the ARB-Silva web site"
    _mintaxid_minimal: "####, --min-taxid=#### minimal taxid for the species taxid"
  }
}