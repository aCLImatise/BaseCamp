version 1.0

task Targqc {
  input {
    File? fai
    Int? padding
    Boolean? reuse
    Boolean? re_annotate
  }
  command <<<
    targqc \
      ~{if defined(fai) then ("--fai " +  '"' + fai + '"') else ""} \
      ~{if defined(padding) then ("--padding " +  '"' + padding + '"') else ""} \
      ~{if (reuse) then "--reuse" else ""} \
      ~{if (re_annotate) then "--reannotate" else ""}
  >>>
  parameter_meta {
    fai: "Path to fai fasta index - sort BAM and BED files, and"
    padding: "integer indicating the number of bases to extend each"
    reuse: "reuse intermediate non-empty files in the work dir"
    re_annotate: "Re-annotate BED file with gene names, even if it's 4"
  }
  output {
    File out_stdout = stdout()
  }
}