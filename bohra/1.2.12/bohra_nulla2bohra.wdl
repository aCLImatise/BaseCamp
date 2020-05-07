version 1.0

task BohraNulla2bohra {
  input {
    String workdirWorkdir
    String jobJobId
    String inputInputFile
    String referenceReference
  }
  command <<<
    bohra nulla2bohra \
      ~{if defined(workdirWorkdir) then ("-workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(jobJobId) then ("--job_id " +  '"' + jobJobId + '"') else ""} \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""}
  >>>
}