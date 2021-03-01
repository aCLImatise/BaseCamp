version 1.0

task RtgBgzip {
  input {
    Int? compression_level
    Boolean? decompress
    File? force
    Boolean? no_terminate
    String block
  }
  command <<<
    rtg bgzip \
      ~{block} \
      ~{if defined(compression_level) then ("--compression-level " +  '"' + compression_level + '"') else ""} \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (no_terminate) then "--no-terminate" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    compression_level: "the compression level to use, between 1 (least\\nbut fast) and 9 (highest but slow) (Default is 5)"
    decompress: "decompress"
    force: "force overwrite of existing output file"
    no_terminate: "if set, do not add the block gzip termination"
    block: "-c, --stdout                write on standard output, keep original files"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}