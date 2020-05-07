version 1.0

task BedJoinTabOffset {
  input {
    Boolean debugDebug
    String tabTabKeyField
    String bedBedKeyField
  }
  command <<<
    bedJoinTabOffset \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(tabTabKeyField) then ("--tabKeyField " +  '"' + tabTabKeyField + '"') else ""} \
      ~{if defined(bedBedKeyField) then ("--bedKeyField " +  '"' + bedBedKeyField + '"') else ""}
  >>>
}