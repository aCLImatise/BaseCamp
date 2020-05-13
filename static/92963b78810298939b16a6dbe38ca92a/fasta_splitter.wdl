version 1.0

task FastaSplitter {
  input {
    String nNParts
    String partPartSize
    Boolean measureMeasure
    Boolean lineLineLength
    Boolean eolEol
    String partPartNumPrefix
    Boolean outOutDir
    Boolean noNoPad
    String? optionsOptions
  }
  command <<<
    fasta-splitter \
      ~{optionsOptions} \
      ~{if defined(nNParts) then ("--n-parts " +  '"' + nNParts + '"') else ""} \
      ~{if defined(partPartSize) then ("--part-size " +  '"' + partPartSize + '"') else ""} \
      ~{true="--measure" false="" measureMeasure} \
      ~{true="--line-length" false="" lineLineLength} \
      ~{true="--eol" false="" eolEol} \
      ~{if defined(partPartNumPrefix) then ("--part-num-prefix " +  '"' + partPartNumPrefix + '"') else ""} \
      ~{true="--out-dir" false="" outOutDir} \
      ~{true="--nopad" false="" noNoPad}
  >>>
}