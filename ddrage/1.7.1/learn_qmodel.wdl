version 1.0

task LearnQmodel {
  input {
    String outputOutput
    Boolean visualizeVisualize
    Boolean plotPlot
    String showShow
    Int lengthLength
  }
  command <<<
    learn_qmodel \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--visualize" false="" visualizeVisualize} \
      ~{true="--plot" false="" plotPlot} \
      ~{if defined(showShow) then ("--show " +  '"' + showShow + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""}
  >>>
}