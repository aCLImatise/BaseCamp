version 1.0

task CountChimericReadsPerGene.py {
  input {
    Boolean? only_first
    Boolean? only_second
    Boolean? singles
    Boolean? quiet
    String? feature
    String? identifier
    String? overlap
    String genes_gff
    String reads_files
  }
  command <<<
    count_chimeric_reads_per_gene.py \
      ~{genes_gff} \
      ~{reads_files} \
      ~{true="--only_first" false="" only_first} \
      ~{true="--only_second" false="" only_second} \
      ~{true="--singles" false="" singles} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(identifier) then ("--identifier " +  '"' + identifier + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""}
  >>>
  parameter_meta {
    only_first: "Count only the first in fragment. (default: False)"
    only_second: "Count only the second in fragment. (default: False)"
    singles: "Count the fragments marked as \"single\", by default count only the chimeric ones. This option forces -1 otherwise the counts will be doubled. (default: False)"
    quiet: "Don't print header and antisense/IGR statistics. (default: False)"
    feature: "Name of features to count on the GTF file (column 2). (default: exon)"
    identifier: "Name of identifier to print (in column 8 of the GTF file). (default: gene_id)"
    overlap: "Minimal overlap between gene and read. (default: 5)"
    genes_gff: "Name of gff file to count the reads per gene."
    reads_files: "Reads files, output of map_chimeric_fragments.py"
  }
}