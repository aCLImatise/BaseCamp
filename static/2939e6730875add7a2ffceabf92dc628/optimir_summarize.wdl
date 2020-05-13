version 1.0

task OptimirSummarize {
  input {
    String dirDir
  }
  command <<<
    optimir summarize \
      ~{if defined(dirDir) then ("--dir " +  '"' + dirDir + '"') else ""}
  >>>
}