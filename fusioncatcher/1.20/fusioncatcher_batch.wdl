version 1.0

task FusioncatcherBatch.py {
  input {
    String aA
    Directory aA
  }
  command <<<
    fusioncatcher-batch.py \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""}
  >>>
}