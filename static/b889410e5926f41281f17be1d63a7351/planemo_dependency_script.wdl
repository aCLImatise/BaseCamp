version 1.0

task PlanemoDependencyScript {
  input {
    Boolean? recursive
    Boolean? fail_fast
    Directory? download_cache
    String project
  }
  command <<<
    planemo dependency_script \
      ~{project} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--fail_fast" false="" fail_fast} \
      ~{if defined(download_cache) then ("--download_cache " +  '"' + download_cache + '"') else ""}
  >>>
  parameter_meta {
    recursive: "Recursively perform command for nested repository directories."
    fail_fast: "If multiple repositories are specified and an error occurs stop immediately instead of processing remaining repositories."
    download_cache: "Directory to cache downloaded files, default is $DOWNLOAD_CACHE"
    project: ""
  }
}