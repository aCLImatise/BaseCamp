version 1.0

task BioformatsGff2to3 {
  input {
    Boolean ignoreIgnoreIncorrectRecords
    String? gff2Gff2File
    String? outputOutputFile
  }
  command <<<
    bioformats gff2to3 \
      ~{gff2Gff2File} \
      ~{true="--ignore_incorrect_records" false="" ignoreIgnoreIncorrectRecords} \
      ~{outputOutputFile}
  >>>
}