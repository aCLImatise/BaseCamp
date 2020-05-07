version 1.0

task ProteinorthoHistory.pl {
  input {
    Boolean stepStep
    Boolean stepStep
    Boolean stepStep
    String stepStep
  }
  command <<<
    proteinortho_history.pl \
      ~{true="-step" false="" stepStep} \
      ~{true="-step" false="" stepStep} \
      ~{true="-step" false="" stepStep} \
      ~{if defined(stepStep) then ("-step " +  '"' + stepStep + '"') else ""}
  >>>
}