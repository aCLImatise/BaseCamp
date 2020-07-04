version 1.0

task Ecotaxstat {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    File? eco_pcr_db
    String? required
  }
  command <<<
    ecotaxstat \
      ~{true="--DEBUG" false="" debug} \
      ~{true="--without-progress-bar" false="" without_progress_bar} \
      ~{if defined(eco_pcr_db) then ("--ecopcrdb " +  '"' + eco_pcr_db + '"') else ""} \
      ~{if defined(required) then ("--required " +  '"' + required + '"') else ""}
  >>>
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    eco_pcr_db: "ecoPCR Database name"
    required: "required taxid"
  }
}