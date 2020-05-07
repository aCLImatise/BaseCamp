version 1.0

task BloomQuery {
  input {
    Int merMer
  }
  command <<<
    bloom_query \
      ~{if defined(merMer) then ("--mer " +  '"' + merMer + '"') else ""}
  >>>
}