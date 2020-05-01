version 1.0

task MergePcrDuplicates.py {
  input {
    String oO
    Boolean vV
    Boolean dD
  }
  command <<<
    merge_pcr_duplicates.py \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD}
  >>>
}