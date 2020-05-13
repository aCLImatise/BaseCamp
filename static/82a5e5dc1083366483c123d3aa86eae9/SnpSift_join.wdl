version 1.0

task SnpSiftJoin {
  input {
    String if1If1
    String if2If2
    String cols1Cols1
    String cols2Cols2
    Boolean allAll
    Boolean closestClosest
    Boolean emptyEmpty
    String? javaJava
    String? joinJoin
    File? fileFile1
    File? fileFile2
  }
  command <<<
    SnpSift join \
      ~{javaJava} \
      ~{if defined(if1If1) then ("-if1 " +  '"' + if1If1 + '"') else ""} \
      ~{if defined(if2If2) then ("-if2 " +  '"' + if2If2 + '"') else ""} \
      ~{if defined(cols1Cols1) then ("-cols1 " +  '"' + cols1Cols1 + '"') else ""} \
      ~{if defined(cols2Cols2) then ("-cols2 " +  '"' + cols2Cols2 + '"') else ""} \
      ~{true="-all" false="" allAll} \
      ~{true="-closest" false="" closestClosest} \
      ~{true="-empty" false="" emptyEmpty} \
      ~{joinJoin} \
      ~{fileFile1} \
      ~{fileFile2}
  >>>
}