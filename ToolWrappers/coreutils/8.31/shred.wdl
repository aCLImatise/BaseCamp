version 1.0

task Shred {
  input {
    Boolean? force
    Int? iterations
    File? random_source
    Int? size
    Boolean? deallocate_remove_file
    Boolean? remove
    Boolean? verbose
    Boolean? exact
    Boolean? add_final_overwrite
  }
  command <<<
    shred \
      ~{if (force) then "--force" else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(random_source) then ("--random-source " +  '"' + random_source + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if (deallocate_remove_file) then "-u" else ""} \
      ~{if (remove) then "--remove" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (exact) then "--exact" else ""} \
      ~{if (add_final_overwrite) then "--zero" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "change permissions to allow writing if necessary"
    iterations: "overwrite N times instead of the default (3)"
    random_source: "get random bytes from FILE"
    size: "shred this many bytes (suffixes like K, M, G accepted)"
    deallocate_remove_file: "deallocate and remove file after overwriting"
    remove: "[=HOW]  like -u but give control on HOW to delete;  See below"
    verbose: "show progress"
    exact: "do not round file sizes up to the next full block;\\nthis is the default for non-regular files"
    add_final_overwrite: "add a final overwrite with zeros to hide shredding"
  }
  output {
    File out_stdout = stdout()
  }
}