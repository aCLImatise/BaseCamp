version 1.0

task AlleleSpecificModification {
  input {
    File? bed
    Float? cut_off
    File? out
    String methylation
  }
  command <<<
    allele_specific_modification \
      ~{methylation} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    bed: "Bed file to aggregate modifications on."
    cut_off: "FDR cutoff. Default: 0.05"
    out: "File to write results to. Default: stdout."
    methylation: "Haplotype specific frequency files."
  }
  output {
    File out_stdout = stdout()
  }
}