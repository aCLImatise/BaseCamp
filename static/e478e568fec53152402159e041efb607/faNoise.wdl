version 1.0

task FaNoise {
  input {
    String outputOutput
    String? inInName
    String? outOutName
    String? transitionTransitionPpt
    String? transversionTransversionPpt
    String? insertInsertPpt
    String? deleteDeletePpt
    String? chimeraChimeraPpt
  }
  command <<<
    faNoise \
      ~{inInName} \
      ~{if defined(outputOutput) then ("- output " +  '"' + outputOutput + '"') else ""} \
      ~{outOutName} \
      ~{transitionTransitionPpt} \
      ~{transversionTransversionPpt} \
      ~{insertInsertPpt} \
      ~{deleteDeletePpt} \
      ~{chimeraChimeraPpt}
  >>>
}