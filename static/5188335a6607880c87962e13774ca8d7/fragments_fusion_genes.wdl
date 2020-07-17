version 1.0

task FragmentsFusionGenes.py {
  input {
    String? fusion_reads
    Int? minimum
    String? fragments
  }
  command <<<
    fragments_fusion_genes.py \
      ~{if defined(fusion_reads) then ("--fusion-reads " +  '"' + fusion_reads + '"') else ""} \
      ~{if defined(minimum) then ("--minimum " +  '"' + minimum + '"') else ""} \
      ~{if defined(fragments) then ("--fragments " +  '"' + fragments + '"') else ""}
  >>>
  parameter_meta {
    fusion_reads: "Input file containing preliminary fusion genes and the supporting paired-reads."
    minimum: "Preliminary fusion genes which have the number of paired-reads strictly less than this value will be written in the output. Default is '0'."
    fragments: "The output file containing the preliminary fusion genes which have supporting paired-reads stricly less the given minimum value."
  }
}