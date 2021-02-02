version 1.0

task Sdrmsd {
  input {
    Boolean? fit
    Int? threshold
    File? out
    String reference_dots_df
    String input_dots_df
  }
  command <<<
    sdrmsd \
      ~{reference_dots_df} \
      ~{input_dots_df} \
      ~{if (fit) then "--fit" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    fit: "Superpose molecules before RMSD calculation"
    threshold: "Discard poses with RMSD < THRESHOLD with respect\\nprevious poses which where not rejected based on same\\nprinciple. A Population SDField will be added to\\noutput SD with the population number."
    out: "If declared, write an output SDF file with the input\\nmolecules with a new sdfield <RMSD>. If molecule was\\nfitted, the fitted molecule coordinates will be saved."
    reference_dots_df: "SDF file with the reference molecule."
    input_dots_df: "SDF file with the molecules to be compared to reference."
  }
  output {
    File out_stdout = stdout()
  }
}