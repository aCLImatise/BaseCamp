version 1.0

task CountChimericReadsPerGenepy {
  input {
    Boolean? only_first
    Boolean? only_second
    Boolean? singles
    Boolean? quiet
    File? feature
    File? identifier
    Int? overlap
    String genes_gff
    String reads_files
  }
  command <<<
    count_chimeric_reads_per_gene_py \
      ~{genes_gff} \
      ~{reads_files} \
      ~{if (only_first) then "--only_first" else ""} \
      ~{if (only_second) then "--only_second" else ""} \
      ~{if (singles) then "--singles" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(identifier) then ("--identifier " +  '"' + identifier + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""}
  >>>
  parameter_meta {
    only_first: "Count only the first in fragment. (default: False)"
    only_second: "Count only the second in fragment. (default: False)"
    singles: "Count the fragments marked as \\\"single\\\", by default\\ncount only the chimeric ones. This option forces -1\\notherwise the counts will be doubled. (default: False)"
    quiet: "Don't print header and antisense/IGR statistics.\\n(default: False)"
    feature: "Name of features to count on the GTF file (column 2).\\n(default: exon)"
    identifier: "Name of identifier to print (in column 8 of the GTF\\nfile). (default: gene_id)"
    overlap: "Minimal overlap between gene and read. (default: 5)\\n"
    genes_gff: "Name of gff file to count the reads per gene."
    reads_files: "Reads files, output of map_chimeric_fragments.py"
  }
  output {
    File out_stdout = stdout()
  }
}