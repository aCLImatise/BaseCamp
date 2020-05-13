version 1.0

task Act {
  input {
    File optionsOptions
    Boolean chadoChado
    Boolean dDBlackBeltMode
    Array[File]+ dDUserPlotX
    Array[File]+ dlogDlogUserPlotX
    File dbaDbaMx
    Boolean dchaDchaDo
    Boolean dreadDreadOnly
    String? sequenceSequence
    String? featureFeature
    String? comparisonComparison
  }
  command <<<
    act \
      ~{sequenceSequence} \
      ~{if defined(optionsOptions) then ("-options " +  '"' + optionsOptions + '"') else ""} \
      ~{true="-chado" false="" chadoChado} \
      ~{true="-Dblack_belt_mode" false="" dDBlackBeltMode} \
      ~{if defined(dDUserPlotX) then ("-DuserplotX " +  '"' + dDUserPlotX + '"') else ""} \
      ~{if defined(dlogDlogUserPlotX) then ("-DloguserplotX " +  '"' + dlogDlogUserPlotX + '"') else ""} \
      ~{if defined(dbaDbaMx) then ("-DbamX " +  '"' + dbaDbaMx + '"') else ""} \
      ~{true="-Dchado" false="" dchaDchaDo} \
      ~{true="-Dread_only" false="" dreadDreadOnly} \
      ~{featureFeature} \
      ~{comparisonComparison}
  >>>
}