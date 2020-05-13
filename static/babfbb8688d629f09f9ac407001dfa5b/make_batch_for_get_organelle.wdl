version 1.0

task MakeBatchForGetOrganelle.py {
  input {
    String oO
    String pP
    Boolean allAll
    Boolean annotatedAnnotated
    Boolean strictStrict
  }
  command <<<
    make_batch_for_get_organelle.py \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--all" false="" allAll} \
      ~{true="--annotated" false="" annotatedAnnotated} \
      ~{true="--strict" false="" strictStrict}
  >>>
}