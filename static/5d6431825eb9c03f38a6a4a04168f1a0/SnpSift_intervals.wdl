version 1.0

task SnpSiftIntervals {
  input {
    File iI
    Boolean xX
    String? javaJava
    Int? intervalsIntervals
    File? fileFile1bed
    File? fileFileNBed
  }
  command <<<
    SnpSift intervals \
      ~{javaJava} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-x" false="" xX} \
      ~{intervalsIntervals} \
      ~{fileFile1bed} \
      ~{fileFileNBed}
  >>>
}