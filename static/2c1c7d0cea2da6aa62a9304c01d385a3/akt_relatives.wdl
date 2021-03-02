version 1.0

task AktRelatives {
  input {
    Boolean? km_in
    Boolean? its
    Boolean? graph_out
    File? prefix
  }
  command <<<
    akt relatives \
      ~{if (km_in) then "--kmin" else ""} \
      ~{if (its) then "--its" else ""} \
      ~{if (graph_out) then "--graphout" else ""} \
      ~{if (prefix) then "--prefix" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    km_in: ":                     threshold for relatedness (0.05)"
    its: ":                      number of iterations to find unrelated (10)"
    graph_out: ":         if present output pedigree graph files"
    prefix: ":                   output file prefix (out)"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}