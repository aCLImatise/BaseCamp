version 1.0

task Obipr2 {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    String? local_db
    Boolean? _mintaxid_minimal
  }
  command <<<
    obipr2 \
      ~{true="--DEBUG" false="" debug} \
      ~{true="--without-progress-bar" false="" without_progress_bar} \
      ~{if defined(local_db) then ("--localdb " +  '"' + local_db + '"') else ""} \
      ~{true="-m" false="" _mintaxid_minimal}
  >>>
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    local_db: "Local copy of the files located in the specified directory will be used instead of those present on the PR2 web site"
    _mintaxid_minimal: "####, --min-taxid=#### minimal taxid for the species taxid"
  }
}