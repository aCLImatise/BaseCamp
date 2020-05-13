version 1.0

task Gotree {
  input {
    String formatFormat
    Int seedSeed
    Int threadsThreads
  }
  command <<<
    gotree \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}