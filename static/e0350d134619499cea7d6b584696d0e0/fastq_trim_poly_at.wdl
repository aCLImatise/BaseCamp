version 1.0

task FastqTrimPolyAt {
  input {
    File fileFile
    File ofileOfile
    Int minMinPolyAtLen
    Int minMinLen
  }
  command <<<
    fastq_trim_poly_at \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(minMinPolyAtLen) then ("--min_poly_at_len " +  '"' + minMinPolyAtLen + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""}
  >>>
}