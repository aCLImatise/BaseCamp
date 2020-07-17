version 1.0

task PeakPie.py {
  input {
    String? bed
    String? gff
    String? out
    Boolean? stranded
    Boolean? include
    Boolean? exclude
    String? thresh
    Boolean? test
  }
  command <<<
    peak_pie.py \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--stranded" false="" stranded} \
      ~{true="--include" false="" include} \
      ~{true="--exclude" false="" exclude} \
      ~{if defined(thresh) then ("--thresh " +  '"' + thresh + '"') else ""} \
      ~{true="--test" false="" test}
  >>>
  parameter_meta {
    bed: "BED file of e.g. peaks"
    gff: "GFF file of e.g. annotations"
    out: "Output PNG file"
    stranded: "Use strand-specific intersections"
    include: "[INCLUDE [INCLUDE ...]] Featuretypes to include"
    exclude: "[EXCLUDE [EXCLUDE ...]] Featuretypes to exclude"
    thresh: "Threshold percentage below which output will be suppressed"
    test: "Run test, overwriting all other args. Result will be \"out.png\" in current directory."
  }
}