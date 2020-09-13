version 1.0

task BedparsePromoter {
  input {
    String? up
    String? down
    Boolean? un_stranded
  }
  command <<<
    bedparse promoter \
      ~{if defined(up) then ("--up " +  '"' + up + '"') else ""} \
      ~{if defined(down) then ("--down " +  '"' + down + '"') else ""} \
      ~{if (un_stranded) then "--unstranded" else ""}
  >>>
  parameter_meta {
    up: "Get this many nt upstream of each feature."
    down: "Get this many nt downstream of each feature."
    un_stranded: "Do not consider strands."
  }
  output {
    File out_stdout = stdout()
  }
}