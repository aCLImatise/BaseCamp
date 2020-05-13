version 1.0

task GuppyUtilities {
  input {
    String? fatFat
    String? heatHeat
    String? singSing
    String? togTog
    String? classificationClassification
    String? utilitiesUtilities
  }
  command <<<
    guppy utilities \
      ~{fatFat} \
      ~{classificationClassification} \
      ~{heatHeat} \
      ~{utilitiesUtilities} \
      ~{singSing} \
      ~{togTog}
  >>>
}