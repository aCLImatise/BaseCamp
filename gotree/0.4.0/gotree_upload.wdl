version 1.0

task GotreeUpload {
  input {
    String inputInput
    String formatFormat
    Int seedSeed
    Int threadsThreads
  }
  command <<<
    gotree upload \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}