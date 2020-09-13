version 1.0

task PlanemoDependencyScript {
  input {
    Boolean? recursive
    Boolean? fail_fast
    Directory? download_cache
    String variables_dot
  }
  command <<<
    planemo dependency_script \
      ~{variables_dot} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (fail_fast) then "--fail_fast" else ""} \
      ~{if defined(download_cache) then ("--download_cache " +  '"' + download_cache + '"') else ""}
  >>>
  parameter_meta {
    recursive: "Recursively perform command for nested\\nrepository directories."
    fail_fast: "If multiple repositories are specified and an\\nerror occurs stop immediately instead of\\nprocessing remaining repositories."
    download_cache: "Directory to cache downloaded files, default is\\n$DOWNLOAD_CACHE"
    variables_dot: "These are intended to be used via ``bash dep_install.sh`` (once), and as"
  }
  output {
    File out_stdout = stdout()
  }
}