version 1.0

task IndexGff {
  input {
    File? index
    Boolean? compress_id
  }
  command <<<
    index_gff \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if (compress_id) then "--compress-id" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index: "Index the given GFF. Takes as arguments as GFF filename\\nand an output directory."
    compress_id: "Use the compressed version of the GFF 'ID=' field rather\\nthan the ID itself when creating .miso output filenames.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_index = "${in_index}"
  }
}