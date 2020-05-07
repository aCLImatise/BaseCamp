version 1.0

task BamFillUnaligned.pyInputFile {
  input {
    String fF
    String qQ
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    bam_fill_unaligned.py input_file \
      ~{inputInputFile} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{outputOutputFile}
  >>>
}