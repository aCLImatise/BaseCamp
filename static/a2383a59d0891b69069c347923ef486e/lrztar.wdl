version 1.0

task Lrztar {
  input {
    Boolean dD
    Boolean oO
    Boolean fF
    String theThe
    String theThe
    String youYou
    String lrzLrzUntar
    String thisThis
    String bewareBeware
  }
  command <<<
    lrztar \
      ~{true="-d" false="" dD} \
      ~{true="-O" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(youYou) then ("- You " +  '"' + youYou + '"') else ""} \
      ~{if defined(lrzLrzUntar) then ("- lrzuntar " +  '"' + lrzLrzUntar + '"') else ""} \
      ~{if defined(thisThis) then ("- This " +  '"' + thisThis + '"') else ""} \
      ~{if defined(bewareBeware) then ("- Beware " +  '"' + bewareBeware + '"') else ""}
  >>>
}