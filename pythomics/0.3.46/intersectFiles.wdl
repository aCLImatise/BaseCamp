version 1.0

task IntersectFiles.py {
  input {
    String pP
    String aA
    String aADelim
    String aACol
    String aAHeader
    String bB
    String bBDelim
    String bBCol
    String bBHeader
    String bBLookup
    Boolean strictStrict
    Boolean oO
    String functionFunction
    String colnameColname
    String aARegex
    String bBRegex
  }
  command <<<
    intersectFiles.py \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(aADelim) then ("--adelim " +  '"' + aADelim + '"') else ""} \
      ~{if defined(aACol) then ("--acol " +  '"' + aACol + '"') else ""} \
      ~{if defined(aAHeader) then ("--aheader " +  '"' + aAHeader + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(bBDelim) then ("--bdelim " +  '"' + bBDelim + '"') else ""} \
      ~{if defined(bBCol) then ("--bcol " +  '"' + bBCol + '"') else ""} \
      ~{if defined(bBHeader) then ("--bheader " +  '"' + bBHeader + '"') else ""} \
      ~{if defined(bBLookup) then ("--blookup " +  '"' + bBLookup + '"') else ""} \
      ~{true="--strict" false="" strictStrict} \
      ~{true="-o" false="" oO} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(colnameColname) then ("--colname " +  '"' + colnameColname + '"') else ""} \
      ~{if defined(aARegex) then ("--aregex " +  '"' + aARegex + '"') else ""} \
      ~{if defined(bBRegex) then ("--bregex " +  '"' + bBRegex + '"') else ""}
  >>>
}