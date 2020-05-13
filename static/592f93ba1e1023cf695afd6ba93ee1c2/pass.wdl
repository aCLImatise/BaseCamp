version 1.0

task Pass {
  input {
    Boolean checkCheckBlock
    Boolean cpuCpu
    Boolean fidFid
    Boolean checkCheckBlock
    Boolean cpuCpu
    Boolean fidFid
    Boolean rangeRange
    Boolean tagsTags
    Boolean checkCheckBlock
    Boolean cpuCpu
    Boolean fidFid
    Boolean checkCheckBlock
    Boolean cpuCpu
    Boolean fidFid
    Boolean rangeRange
    Boolean libLibType
    Boolean rangeRange
    Boolean tagsTags
    String dD
  }
  command <<<
    pass \
      ~{true="-check_block" false="" checkCheckBlock} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-fid" false="" fidFid} \
      ~{true="-check_block" false="" checkCheckBlock} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-fid" false="" fidFid} \
      ~{true="-range" false="" rangeRange} \
      ~{true="-tags" false="" tagsTags} \
      ~{true="-check_block" false="" checkCheckBlock} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-fid" false="" fidFid} \
      ~{true="-check_block" false="" checkCheckBlock} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-fid" false="" fidFid} \
      ~{true="-range" false="" rangeRange} \
      ~{true="-lib_type" false="" libLibType} \
      ~{true="-range" false="" rangeRange} \
      ~{true="-tags" false="" tagsTags} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""}
  >>>
}