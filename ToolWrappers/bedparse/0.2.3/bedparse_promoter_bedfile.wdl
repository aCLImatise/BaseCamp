version 1.0

task BedparsePromoterBedfile {
  input {
    Boolean? un_stranded
    String? down
    String? up
  }
  command <<<
    bedparse promoter bedfile \
      ~{if (un_stranded) then "--unstranded" else ""} \
      ~{if defined(down) then ("--down " +  '"' + down + '"') else ""} \
      ~{if defined(up) then ("--up " +  '"' + up + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    un_stranded: ""
    down: ""
    up: ""
  }
  output {
    File out_stdout = stdout()
  }
}