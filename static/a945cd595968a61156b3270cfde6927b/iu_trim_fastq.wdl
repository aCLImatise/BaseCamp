version 1.0

task IuTrimFastq {
  input {
    Int fF
    Int tT
  }
  command <<<
    iu-trim-fastq \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}