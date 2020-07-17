version 1.0

task GdtoolsMASK {
  input {
    Boolean? small
    String? output_genome_diff
    Boolean? verbose
  }
  command <<<
    gdtools MASK \
      ~{true="--small" false="" small} \
      ~{if defined(output_genome_diff) then ("--output " +  '"' + output_genome_diff + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    small: "Mask only 'small' mutations defined as: all SNP mutations; INS, DEL, and SUB mutations with sizes ≤ 20 bp; and all INS and DEL mutations causing expansion or contraction of simple sequence repeats (SSRs) with at least two repeats of the same unit of one to several bp and a total length of 5 bp in the reference genome. If these mutations are marked as 'mediated' or 'between' repeats, then they are NOT removed."
    output_genome_diff: "Output Genome Diff file. (DEFAULT=output.gd)"
    verbose: "Verbose mode"
  }
}