version 1.0

task FilterAugustusGffpl {
  input {
    File? in
    Int? out
    Boolean? src
  }
  command <<<
    filter_augustus_gff_pl \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (src) then "--src" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/braker2:2.1.6--hdfd78af_1"
  }
  parameter_meta {
    in: "AUGUSTUS output file in GFF format"
    out: "If specified, write filtered gene predictions\\nin GTF format to given file. If not specified,\\nonly the number of supported genes is printed\\nto STDOUT."
    src: "=(E|P)                         Source tag of evidence to filter for, e.g. P\\nfor protein or E for ESTs/RNA-Seq introns,\\ncan in principle be any source, but only one\\nat a time. Support threshold is one hint per\\ntranscript."
  }
  output {
    File out_stdout = stdout()
    File out_in = "${in_in}"
  }
}