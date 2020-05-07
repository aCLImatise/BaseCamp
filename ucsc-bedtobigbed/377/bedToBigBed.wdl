version 1.0

task BedToBigBed {
  input {
    String sizesSizesIs2bit
    Boolean udcUdcDir
    String? inInBed
    String? chromChromSizes
    String? outOutBb
  }
  command <<<
    bedToBigBed \
      ~{inInBed} \
      ~{if defined(sizesSizesIs2bit) then ("-sizesIs2Bit " +  '"' + sizesSizesIs2bit + '"') else ""} \
      ~{true="-udcDir" false="" udcUdcDir} \
      ~{chromChromSizes} \
      ~{outOutBb}
  >>>
}