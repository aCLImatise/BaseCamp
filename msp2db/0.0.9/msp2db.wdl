version 1.0

task Msp2db {
  input {
    String mspMspPth
    String sourceSource
    String outOutPth
    String dbDbType
    Boolean deleteDeleteTables
    String msMsLevel
    String polarityPolarity
    String chunkChunk
    String schemaSchema
    Boolean ignoreIgnoreCompoundLookup
  }
  command <<<
    msp2db \
      ~{if defined(mspMspPth) then ("--msp_pth " +  '"' + mspMspPth + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""} \
      ~{if defined(outOutPth) then ("--out_pth " +  '"' + outOutPth + '"') else ""} \
      ~{if defined(dbDbType) then ("--db_type " +  '"' + dbDbType + '"') else ""} \
      ~{true="--delete_tables" false="" deleteDeleteTables} \
      ~{if defined(msMsLevel) then ("--mslevel " +  '"' + msMsLevel + '"') else ""} \
      ~{if defined(polarityPolarity) then ("--polarity " +  '"' + polarityPolarity + '"') else ""} \
      ~{if defined(chunkChunk) then ("--chunk " +  '"' + chunkChunk + '"') else ""} \
      ~{if defined(schemaSchema) then ("--schema " +  '"' + schemaSchema + '"') else ""} \
      ~{true="--ignore_compound_lookup" false="" ignoreIgnoreCompoundLookup}
  >>>
}