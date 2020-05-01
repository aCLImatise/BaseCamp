version 1.0

task ToAfg {
  input {
    File readsReads
    Boolean fastFastQ
    File outOut
  }
  command <<<
    to_afg \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{true="--fastq" false="" fastFastQ} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}