version 1.0

task Geneorder.py {
  input {
    File outfileOutfile
    String tT
    String tT
    String fF
    String ignoreIgnore
    Boolean ignoreIgnoreAll
    Boolean notNotRna
    Boolean madMad
    Boolean maxMax
    String? gbGbFiles
  }
  command <<<
    geneorder.py \
      ~{gbGbFiles} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{true="--ignoreall" false="" ignoreIgnoreAll} \
      ~{true="--notrna" false="" notNotRna} \
      ~{true="--mad" false="" madMad} \
      ~{true="--max" false="" maxMax}
  >>>
}