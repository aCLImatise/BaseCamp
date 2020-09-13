version 1.0

task RustDipeptidebak {
  input {
    File? directory_path_outputfile
    String transcriptome
    String alignment
    String offset
    String lengths
  }
  command <<<
    rust_dipeptide_bak \
      ~{transcriptome} \
      ~{alignment} \
      ~{offset} \
      ~{lengths} \
      ~{if defined(directory_path_outputfile) then ("-o " +  '"' + directory_path_outputfile + '"') else ""}
  >>>
  parameter_meta {
    directory_path_outputfile: "directory  path to outputfile, default is \\\"dipeptide\\\""
    transcriptome: "fasta file of transcripts, CDS start and end may be\\nprovided on description line using tab separation e.g.\\n>NM_0001 10 5000, otherwise it searches for longest\\nORF"
    alignment: "sorted bam file of alignments to transcriptome"
    offset: "nucleotide offset to A-site"
    lengths: "lengths of footprints included, for example 28:32 is\\n28,29,30,31,32"
  }
  output {
    File out_stdout = stdout()
  }
}