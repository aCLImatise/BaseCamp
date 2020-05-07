version 1.0

task MglexCliSignificance {
  input {
    File dataData
    File weightWeight
    File nullNullData
    File responsibilityResponsibility
    String? significanceSignificance
    String? significanceSignificance
  }
  command <<<
    mglex-cli significance \
      ~{significanceSignificance} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{if defined(nullNullData) then ("--nulldata " +  '"' + nullNullData + '"') else ""} \
      ~{if defined(responsibilityResponsibility) then ("--responsibility " +  '"' + responsibilityResponsibility + '"') else ""} \
      ~{significanceSignificance}
  >>>
}