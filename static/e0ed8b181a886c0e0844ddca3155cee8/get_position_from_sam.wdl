version 1.0

task GetPositionFromSam.pySamfile {
  input {
    String rootRoot
    String? samSamFile
    String? fastFastAFile
  }
  command <<<
    get_position_from_sam.py samfile \
      ~{samSamFile} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{fastFastAFile}
  >>>
}