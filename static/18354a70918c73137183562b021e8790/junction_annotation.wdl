version 1.0

task JunctionAnnotation.py {
  input {
    String? input_file
    String? ref_gene
    String? out_prefix
    Int? min_intron
    String? mapq
  }
  command <<<
    junction_annotation.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(min_intron) then ("--min-intron " +  '"' + min_intron + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    ref_gene: "Reference gene model in bed format. This file is better to be a pooled gene model as it will be used to annotate splicing junctions [required]"
    out_prefix: "Prefix of output files(s). [required]"
    min_intron: "Minimum intron length (bp). default=50 [optional]"
    mapq: "Minimum mapping quality (phred scaled) for an alignment to be considered as \"uniquely mapped\". default=30"
  }
}