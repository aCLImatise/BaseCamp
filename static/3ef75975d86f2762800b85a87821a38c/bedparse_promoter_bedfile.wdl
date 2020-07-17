version 1.0

task BedparsePromoterBedfile {
  input {
    String? up
    String? down
    Boolean? un_stranded
  }
  command <<<
    bedparse promoter bedfile \
      ~{if defined(up) then ("--up " +  '"' + up + '"') else ""} \
      ~{if defined(down) then ("--down " +  '"' + down + '"') else ""} \
      ~{true="--unstranded" false="" un_stranded}
  >>>
  parameter_meta {
    up: ""
    down: ""
    un_stranded: ""
  }
}