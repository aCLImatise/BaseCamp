version 1.0

task Gatekeeperbench {
  input {
    Boolean gG
    Boolean seedSeed
    String createCreate
    Boolean matesMates
    Boolean readsReads
  }
  command <<<
    gatekeeperbench \
      ~{true="-g" false="" gG} \
      ~{true="-seed" false="" seedSeed} \
      ~{if defined(createCreate) then ("-create " +  '"' + createCreate + '"') else ""} \
      ~{true="-mates" false="" matesMates} \
      ~{true="-reads" false="" readsReads}
  >>>
}