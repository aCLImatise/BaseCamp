version 1.0

task Annotate.py {
  input {
    String inputInput
    String databaseDatabase
    String blastBlast
    String evalueEvalue
  }
  command <<<
    annotate.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(blastBlast) then ("--blast " +  '"' + blastBlast + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""}
  >>>
}