version 1.0

task PrepareTranscripts {
  input {
    File? gtf
    File? fast_a
    Directory? out_dir
    Boolean? v
  }
  command <<<
    prepare_transcripts \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    gtf: "Default, suitable for GENCODE and ENSEMBL GTF file,\\nplease refer: https://en.wikipedia.org/wiki/GENCODE,\\nor using GTFupdate command to update your GTF file."
    fast_a: "The genome sequences file in fasta format."
    out_dir: "annotation directory name."
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}