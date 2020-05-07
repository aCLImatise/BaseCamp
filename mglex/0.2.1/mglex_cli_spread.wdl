version 1.0

task MglexCliSpread {
  input {
    File dataData
    File responsibilityResponsibility
    File weightWeight
    Int precisionPrecision
    Boolean normalizeNormalize
    String? spreadSpread
    String? spreadSpread
  }
  command <<<
    mglex-cli spread \
      ~{spreadSpread} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(responsibilityResponsibility) then ("--responsibility " +  '"' + responsibilityResponsibility + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{true="--normalize" false="" normalizeNormalize} \
      ~{spreadSpread}
  >>>
}