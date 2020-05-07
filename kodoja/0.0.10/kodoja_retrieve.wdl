version 1.0

task KodojaRetrieve.py {
  input {
    File fileFileDir
    String readRead1
    String readRead2
    String userUserFormat
    String taxidTaxid
    Boolean genusGenus
    Boolean stringentStringent
  }
  command <<<
    kodoja_retrieve.py \
      ~{if defined(fileFileDir) then ("--file_dir " +  '"' + fileFileDir + '"') else ""} \
      ~{if defined(readRead1) then ("--read1 " +  '"' + readRead1 + '"') else ""} \
      ~{if defined(readRead2) then ("--read2 " +  '"' + readRead2 + '"') else ""} \
      ~{if defined(userUserFormat) then ("--user_format " +  '"' + userUserFormat + '"') else ""} \
      ~{if defined(taxidTaxid) then ("--taxID " +  '"' + taxidTaxid + '"') else ""} \
      ~{true="--genus" false="" genusGenus} \
      ~{true="--stringent" false="" stringentStringent}
  >>>
}