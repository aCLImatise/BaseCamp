version 1.0

task PpaniniScatterplot {
  input {
    Boolean? master_plot
    File? path
    String? outfile
    Int? size
    String? i
    String? m_eight
  }
  command <<<
    ppanini_scatterplot \
      ~{true="--master-plot" false="" master_plot} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(m_eight) then ("-m8 " +  '"' + m_eight + '"') else ""}
  >>>
  parameter_meta {
    master_plot: "plotting master figure of the paper"
    path: "path for inputs and/or outputs"
    outfile: "output file"
    size: "size of the plot in inches"
    i: ""
    m_eight: ""
  }
}