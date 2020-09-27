version 1.0

task Vcontact2Gene2genome {
  input {
    File? proteins
    Boolean? s
    File? o
  }
  command <<<
    vcontact2_gene2genome \
      ~{if defined(proteins) then ("--proteins " +  '"' + proteins + '"') else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    proteins: "-o FILENAME, --output FILENAME\\n-s {VIRSorter,Prodigal-coords,Prodigal-FAA,MetaGeneMark,NCBICodingSequence,NCBIFasta}, --source-type {VIRSorter,Prodigal-coords,Prodigal-FAA,MetaGeneMark,NCBICodingSequence,NCBIFasta}\\nSelect one of the options as an input source. MetaGeneMark can be either the nucleotide or protein FASTA-formatted output.\\n-k, --keep-descriptions\\nThis will enable taking the full description of sequences during MetaGeneMark parsing.\\n-c, --compatibility   Adds compatibility for vContact1 headers.\\n"
    s: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}