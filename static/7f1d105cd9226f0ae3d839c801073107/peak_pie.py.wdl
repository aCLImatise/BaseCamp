version 1.0

task PeakPiepy {
  input {
    File? bed
    File? gff
    File? out
    Boolean? stranded
    Boolean? include
    Boolean? exclude
    String? thresh
    String suppressed
  }
  command <<<
    peak_pie_py \
      ~{suppressed} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if (include) then "--include" else ""} \
      ~{if (exclude) then "--exclude" else ""} \
      ~{if defined(thresh) then ("--thresh " +  '"' + thresh + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "BED file of e.g. peaks"
    gff: "GFF file of e.g. annotations"
    out: "Output PNG file"
    stranded: "Use strand-specific intersections"
    include: "[INCLUDE [INCLUDE ...]]\\nFeaturetypes to include"
    exclude: "[EXCLUDE [EXCLUDE ...]]\\nFeaturetypes to exclude"
    thresh: "Threshold percentage below which output will be"
    suppressed: "--test                Run test, overwriting all other args. Result will be"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}