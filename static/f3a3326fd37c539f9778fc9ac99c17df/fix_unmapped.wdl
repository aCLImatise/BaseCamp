version 1.0

task FixUnmapped.py {
  input {
    String inputInputFile
    Array[String]+ accessionAccession2taxid
    String outputOutputFile
    String remainingRemaining
  }
  command <<<
    fix_unmapped.py \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(accessionAccession2taxid) then ("--accession2taxid " +  '"' + accessionAccession2taxid + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(remainingRemaining) then ("--remaining " +  '"' + remainingRemaining + '"') else ""}
  >>>
}