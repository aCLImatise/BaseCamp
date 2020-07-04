version 1.0

task Sdrmsd {
  input {
    Boolean? fit
    String? threshold
    File? out
    String reference_dots_df
    String input_dots_df
  }
  command <<<
    sdrmsd \
      ~{reference_dots_df} \
      ~{input_dots_df} \
      ~{true="--fit" false="" fit} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    fit: "Superpose molecules before RMSD calculation"
    threshold: "Discard poses with RMSD < THRESHOLD with respect previous poses which where not rejected based on same principle. A Population SDField will be added to output SD with the population number."
    out: "If declared, write an output SDF file with the input molecules with a new sdfield <RMSD>. If molecule was fitted, the fitted molecule coordinates will be saved."
    reference_dots_df: "SDF file with the reference molecule."
    input_dots_df: "SDF file with the molecules to be compared to reference."
  }
}