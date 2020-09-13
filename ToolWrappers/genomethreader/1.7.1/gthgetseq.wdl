version 1.0

task Gthgetseq {
  input {
    Boolean? get_cdna
    Boolean? get_cdna_comp
    Boolean? get_protein
    Boolean? get_protein_comp
    Boolean? get_genomic
    Boolean? get_genomic_comp
    Float? min_alignment_score
    Float? max_alignment_score
    Boolean? min_coverage
    Boolean? max_coverage
    Boolean? gzip
    Boolean? bzip_two
    Boolean? version
  }
  command <<<
    gthgetseq \
      ~{if (get_cdna) then "-getcdna" else ""} \
      ~{if (get_cdna_comp) then "-getcdnacomp" else ""} \
      ~{if (get_protein) then "-getprotein" else ""} \
      ~{if (get_protein_comp) then "-getproteincomp" else ""} \
      ~{if (get_genomic) then "-getgenomic" else ""} \
      ~{if (get_genomic_comp) then "-getgenomiccomp" else ""} \
      ~{if defined(min_alignment_score) then ("-minalignmentscore " +  '"' + min_alignment_score + '"') else ""} \
      ~{if defined(max_alignment_score) then ("-maxalignmentscore " +  '"' + max_alignment_score + '"') else ""} \
      ~{if (min_coverage) then "-mincoverage" else ""} \
      ~{if (max_coverage) then "-maxcoverage" else ""} \
      ~{if (gzip) then "-gzip" else ""} \
      ~{if (bzip_two) then "-bzip2" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    get_cdna: "get cDNA/EST sequences\\ndefault: no"
    get_cdna_comp: "get complement of cDNA/EST sequences\\ndefault: no"
    get_protein: "get protein sequences\\ndefault: no"
    get_protein_comp: "get complement of protein sequences\\ndefault: no"
    get_genomic: "get genomic sequences\\ndefault: no"
    get_genomic_comp: "get complement of genomic sequences\\ndefault: no"
    min_alignment_score: "the minimum alignment score for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 0.00"
    max_alignment_score: "the maximum alignment score for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 1.00"
    min_coverage: "set the minimum coverage for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 0.00"
    max_coverage: "set the maximum coverage for spliced alignments to be\\nincluded into the set of spliced alignments\\ndefault: 9999.99"
    gzip: "gzip compressed input file(s)\\ndefault: no"
    bzip_two: "bzip2 compressed input file(s)\\ndefault: no"
    version: "display version information and exit"
  }
  output {
    File out_stdout = stdout()
  }
}