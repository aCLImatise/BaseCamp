version 1.0

task EasypqpReduce {
  input {
    File inIn
    File outOut
    Int binsBins
    Int peptidesPeptides
  }
  command <<<
    easypqp reduce \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(binsBins) then ("--bins " +  '"' + binsBins + '"') else ""} \
      ~{if defined(peptidesPeptides) then ("--peptides " +  '"' + peptidesPeptides + '"') else ""}
  >>>
}