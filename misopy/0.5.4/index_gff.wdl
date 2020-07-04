version 1.0

task IndexGff {
  input {
    String? index
    Boolean? compress_id
  }
  command <<<
    index_gff \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{true="--compress-id" false="" compress_id}
  >>>
  parameter_meta {
    index: "Index the given GFF. Takes as arguments as GFF filename and an output directory."
    compress_id: "Use the compressed version of the GFF 'ID=' field rather than the ID itself when creating .miso output filenames."
  }
}