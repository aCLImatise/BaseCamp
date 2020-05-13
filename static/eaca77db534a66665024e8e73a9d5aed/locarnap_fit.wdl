version 1.0

task LocarnapFit {
  input {
    Boolean onceOnceOn
    Boolean allAllValues
    File penaltiesPenalties
  }
  command <<<
    locarnap_fit \
      ~{true="--once-on" false="" onceOnceOn} \
      ~{true="--all-values" false="" allAllValues} \
      ~{if defined(penaltiesPenalties) then ("--penalties " +  '"' + penaltiesPenalties + '"') else ""}
  >>>
}