version 1.0

task Bgzip {
  input {
    Int? offset
    Boolean? stdout
    Boolean? decompress
    Boolean? force
    Boolean? index
    File? index_name
    Int? compress_level
    Boolean? re_index
    Boolean? reb_gzip
    Int? size
    Int? threads
    Boolean? test
    File? var_file
  }
  command <<<
    bgzip \
      ~{var_file} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if defined(index_name) then ("--index-name " +  '"' + index_name + '"') else ""} \
      ~{if defined(compress_level) then ("--compress-level " +  '"' + compress_level + '"') else ""} \
      ~{if (re_index) then "--reindex" else ""} \
      ~{if (reb_gzip) then "--rebgzip" else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (test) then "--test" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/htslib:1.11--hd3b49d5_2"
  }
  parameter_meta {
    offset: "decompress at virtual file pointer (0-based uncompressed offset)"
    stdout: "write on standard output, keep original files unchanged"
    decompress: "decompress"
    force: "overwrite files without asking"
    index: "compress and create BGZF index"
    index_name: "name of BGZF index file [file.gz.gzi]"
    compress_level: "Compression level to use when compressing; 0 to 9, or -1 for default [-1]"
    re_index: "(re)index compressed file"
    reb_gzip: "use an index file to bgzip a file"
    size: "decompress INT bytes (uncompressed size)"
    threads: "number of compression threads to use [1]"
    test: "test integrity of compressed file"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}