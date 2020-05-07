version 1.0

task GkpStoreCreate {
  input {
    String oO
  }
  command <<<
    gkpStoreCreate \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}