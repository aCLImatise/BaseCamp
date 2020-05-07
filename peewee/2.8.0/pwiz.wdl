version 1.0

task Pwiz.py {
  input {
    String tablesTables
    Boolean infoInfo
    Boolean preservePreserveOrder
    String? databaseDatabaseName
  }
  command <<<
    pwiz.py \
      ~{databaseDatabaseName} \
      ~{if defined(tablesTables) then ("--tables " +  '"' + tablesTables + '"') else ""} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--preserve-order" false="" preservePreserveOrder}
  >>>
}