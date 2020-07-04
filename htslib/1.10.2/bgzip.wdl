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
    File? file
  }
  command <<<
    bgzip \
      ~{file} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{true="--stdout" false="" stdout} \
      ~{true="--decompress" false="" decompress} \
      ~{true="--force" false="" force} \
      ~{true="--index" false="" index} \
      ~{if defined(index_name) then ("--index-name " +  '"' + index_name + '"') else ""} \
      ~{if defined(compress_level) then ("--compress-level " +  '"' + compress_level + '"') else ""} \
      ~{true="--reindex" false="" re_index} \
      ~{true="--rebgzip" false="" reb_gzip} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--test" false="" test}
  >>>
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
    file: ""
  }
}