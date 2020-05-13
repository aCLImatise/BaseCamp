version 1.0

task TextHistogram {
  input {
    String dataData
    String autoscaleAutoscale
    String probProbValues
    String showShow
    String skipSkip
    String? inInFile
  }
  command <<<
    textHistogram \
      ~{inInFile} \
      ~{if defined(dataData) then ("- Data " +  '"' + dataData + '"') else ""} \
      ~{if defined(autoscaleAutoscale) then ("- autoscale " +  '"' + autoscaleAutoscale + '"') else ""} \
      ~{if defined(probProbValues) then ("-probValues " +  '"' + probProbValues + '"') else ""} \
      ~{if defined(showShow) then ("- show " +  '"' + showShow + '"') else ""} \
      ~{if defined(skipSkip) then ("- skip " +  '"' + skipSkip + '"') else ""}
  >>>
}