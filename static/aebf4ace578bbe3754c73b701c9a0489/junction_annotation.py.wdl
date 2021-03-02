version 1.0

task JunctionAnnotationpy {
  input {
    File? input_file
    File? ref_gene
    String? out_prefix
    Int? min_intron
    Int? mapq
  }
  command <<<
    junction_annotation_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(min_intron) then ("--min-intron " +  '"' + min_intron + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    ref_gene: "Reference gene model in bed format. This file is\\nbetter to be a pooled gene model as it will be used to\\nannotate splicing junctions [required]"
    out_prefix: "Prefix of output files(s). [required]"
    min_intron: "Minimum intron length (bp). default=50 [optional]"
    mapq: "Minimum mapping quality (phred scaled) for an\\nalignment to be considered as \\\"uniquely mapped\\\".\\ndefault=30\\n"
  }
  output {
    File out_stdout = stdout()
  }
}