version 1.0

task TgtShiftBoundaries.py {
  input {
    String encodingEncoding
    String formatFormat
    String outfileOutfile
    String? shiftShift
    File? fileFile
  }
  command <<<
    tgt-shift-boundaries.py \
      ~{shiftShift} \
      ~{if defined(encodingEncoding) then ("--encoding " +  '"' + encodingEncoding + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{fileFile}
  >>>
}