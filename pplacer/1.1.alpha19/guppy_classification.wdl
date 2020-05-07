version 1.0

task GuppyClassification {
  input {
    String? fatFat
    String? heatHeat
    String? singSing
    String? togTog
    String? classificationClassification
    String? utilitiesUtilities
  }
  command <<<
    guppy classification \
      ~{fatFat} \
      ~{classificationClassification} \
      ~{heatHeat} \
      ~{utilitiesUtilities} \
      ~{singSing} \
      ~{togTog}
  >>>
}