version 1.0

task SequanaSummary {
  input {
    File fileFile
    String globGlob
    String sampleSample
    String threadThread
  }
  command <<<
    sequana_summary \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(globGlob) then ("--glob " +  '"' + globGlob + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""}
  >>>
}