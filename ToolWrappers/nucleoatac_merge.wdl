version 1.0

task NucleoatacMerge {
  input {
    File? occ_peaks
    File? nuc_pos
    Int? sep
    Int? min_occ
    String optional
  }
  command <<<
    nucleoatac merge \
      ~{optional} \
      ~{if defined(occ_peaks) then ("--occpeaks " +  '"' + occ_peaks + '"') else ""} \
      ~{if defined(nuc_pos) then ("--nucpos " +  '"' + nuc_pos + '"') else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(min_occ) then ("--min_occ " +  '"' + min_occ + '"') else ""}
  >>>
  parameter_meta {
    occ_peaks: "Output from occ utility"
    nuc_pos: "Output from nuc utility"
    sep: "minimum separation between call"
    min_occ: "minimum lower bound occupancy of nucleosomes to be\\nconsidered for excluding NFR. default is 0.1\\n"
    optional: "--out out_basename    output file basename"
  }
  output {
    File out_stdout = stdout()
  }
}