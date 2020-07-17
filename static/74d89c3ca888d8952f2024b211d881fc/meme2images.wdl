version 1.0

task Meme2images {
  input {
    String? motif
    Boolean? eps
    Boolean? png
    Boolean? rc
    String motifs_file
    String output_directory
  }
  command <<<
    meme2images \
      ~{motifs_file} \
      ~{output_directory} \
      ~{if defined(motif) then ("-motif " +  '"' + motif + '"') else ""} \
      ~{true="-eps" false="" eps} \
      ~{true="-png" false="" png} \
      ~{true="-rc" false="" rc}
  >>>
  parameter_meta {
    motif: "output only a selected motif; repeatable"
    eps: "output logos in eps format"
    png: "output logos in png format"
    rc: "output reverse complement logos"
    motifs_file: ""
    output_directory: ""
  }
}