version 1.0

task Shred {
  input {
    Boolean? force
    String? iterations
    File? random_source
    String? size
    Boolean? truncate_remove_file
    Boolean? remove
    Boolean? verbose
    Boolean? exact
    Boolean? add_final_overwrite
    String? option
  }
  command <<<
    shred \
      ~{option} \
      ~{true="--force" false="" force} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(random_source) then ("--random-source " +  '"' + random_source + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{true="-u" false="" truncate_remove_file} \
      ~{true="--remove" false="" remove} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--exact" false="" exact} \
      ~{true="--zero" false="" add_final_overwrite}
  >>>
  parameter_meta {
    force: "change permissions to allow writing if necessary"
    iterations: "overwrite N times instead of the default (3)"
    random_source: "get random bytes from FILE"
    size: "shred this many bytes (suffixes like K, M, G accepted)"
    truncate_remove_file: "truncate and remove file after overwriting"
    remove: "[=HOW]  like -u but give control on HOW to delete;  See below"
    verbose: "show progress"
    exact: "do not round file sizes up to the next full block; this is the default for non-regular files"
    add_final_overwrite: "add a final overwrite with zeros to hide shredding"
    option: ""
  }
}