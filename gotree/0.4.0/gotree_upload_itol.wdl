version 1.0

task GotreeUploadItol {
  input {
    String nameName
    String projectProject
    String userUserId
    String formatFormat
    String inputInput
    Int seedSeed
    Int threadsThreads
    String? flagsFlags
  }
  command <<<
    gotree upload itol \
      ~{flagsFlags} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(userUserId) then ("--user-id " +  '"' + userUserId + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}