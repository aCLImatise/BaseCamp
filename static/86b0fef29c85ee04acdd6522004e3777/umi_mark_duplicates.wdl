version 1.0

task UmiMarkDuplicates {
  input {
    File fF
    String pP
    Boolean dD
    Boolean cC
  }
  command <<<
    umi_mark_duplicates \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="-c" false="" cC}
  >>>
}