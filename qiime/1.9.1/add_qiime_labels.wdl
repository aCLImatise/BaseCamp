version 1.0

task AddQiimeLabels.py {
  input {
    String mappingMappingFp
    String fastFastADir
    File filenameFilenameColumn
  }
  command <<<
    add_qiime_labels.py \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""} \
      ~{if defined(fastFastADir) then ("--fasta_dir " +  '"' + fastFastADir + '"') else ""} \
      ~{if defined(filenameFilenameColumn) then ("--filename_column " +  '"' + filenameFilenameColumn + '"') else ""}
  >>>
}