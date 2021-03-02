version 1.0

task Meme2images {
  input {
    String? motif
    Boolean? eps
    Boolean? png
    Boolean? rc
    File motifs_file
  }
  command <<<
    meme2images \
      ~{motifs_file} \
      ~{if defined(motif) then ("-motif " +  '"' + motif + '"') else ""} \
      ~{if (eps) then "-eps" else ""} \
      ~{if (png) then "-png" else ""} \
      ~{if (rc) then "-rc" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    motif: "output only a selected motif; repeatable"
    eps: "output logos in eps format"
    png: "output logos in png format"
    rc: "output reverse complement logos"
    motifs_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}