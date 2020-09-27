version 1.0

task Tandemgenotypes {
  input {
    File? genes
    Int? output_format_default
    Float? mis_map
    Int? post_mask
    Int? promoter
    Int? select
    Int? min_unit
    Int? far
    Int? near
    String? mode
    File? scores
    Boolean? verbose
    String micro_sat_dot_txt
    String alignments_dot_maf
  }
  command <<<
    tandem_genotypes \
      ~{micro_sat_dot_txt} \
      ~{alignments_dot_maf} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(output_format_default) then ("--output " +  '"' + output_format_default + '"') else ""} \
      ~{if defined(mis_map) then ("--mismap " +  '"' + mis_map + '"') else ""} \
      ~{if defined(post_mask) then ("--postmask " +  '"' + post_mask + '"') else ""} \
      ~{if defined(promoter) then ("--promoter " +  '"' + promoter + '"') else ""} \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""} \
      ~{if defined(min_unit) then ("--min-unit " +  '"' + min_unit + '"') else ""} \
      ~{if defined(far) then ("--far " +  '"' + far + '"') else ""} \
      ~{if defined(near) then ("--near " +  '"' + near + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(scores) then ("--scores " +  '"' + scores + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    genes: "read genes from a genePred or BED file"
    output_format_default: "output format: 1=original, 2=alleles (default=1)"
    mis_map: "ignore any alignment with mismap probability > PROB\\n(default=1e-06)"
    post_mask: "ignore mostly-lowercase alignments (default=1)"
    promoter: "promoter length (default=300)"
    select: "select: all repeats (0), non-intergenic repeats (1),\\nnon-intergenic non-intronic repeats (2) (default=0)"
    min_unit: "ignore repeats with unit shorter than BP (default=2)"
    far: "require alignment >= BP beyond both sides of a repeat\\n(default=100)"
    near: "count insertions <= BP beyond a repeat (default=60)"
    mode: "L=lenient, S=strict (default=L)"
    scores: "importance scores for gene parts"
    verbose: "show more details"
    micro_sat_dot_txt: ""
    alignments_dot_maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}