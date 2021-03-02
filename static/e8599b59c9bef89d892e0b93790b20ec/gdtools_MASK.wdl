version 1.0

task GdtoolsMASK {
  input {
    Boolean? small
    File? output_genome_diff
    Boolean? verbose
  }
  command <<<
    gdtools MASK \
      ~{if (small) then "--small" else ""} \
      ~{if defined(output_genome_diff) then ("--output " +  '"' + output_genome_diff + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    small: "Mask only 'small' mutations defined as: all SNP mutations; INS, DEL, and SUB mutations with sizes ≤ 20 bp; and all INS and DEL mutations causing expansion or contraction of simple sequence repeats (SSRs) with at least two repeats of the same unit of one to several bp and a total length of 5 bp in the reference genome. If these mutations are marked as 'mediated' or 'between' repeats, then they are NOT removed."
    output_genome_diff: "Output Genome Diff file. (DEFAULT=output.gd)"
    verbose: "Verbose mode"
  }
  output {
    File out_stdout = stdout()
    File out_output_genome_diff = "${in_output_genome_diff}"
  }
}