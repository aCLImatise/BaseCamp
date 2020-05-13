version 1.0

task PlanemoDependencyScript {
  input {
    Boolean recursiveRecursive
    Boolean failFailFast
    Directory downloadDownloadCache
  }
  command <<<
    planemo dependency_script \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--fail_fast" false="" failFailFast} \
      ~{if defined(downloadDownloadCache) then ("--download_cache " +  '"' + downloadDownloadCache + '"') else ""}
  >>>
}