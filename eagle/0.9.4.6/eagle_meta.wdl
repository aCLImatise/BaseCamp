version 1.0

task EagleMeta {
  input {
    String sS
    Boolean deleteDelete
    Boolean storeStoreList
    String? inputInput
    String? nameName
  }
  command <<<
    eagle meta \
      ~{inputInput} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="--delete" false="" deleteDelete} \
      ~{true="--storelist" false="" storeStoreList} \
      ~{nameName}
  >>>
}