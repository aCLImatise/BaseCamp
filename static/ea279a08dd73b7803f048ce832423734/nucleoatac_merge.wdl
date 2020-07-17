version 1.0

task NucleoatacMerge {
  input {
    String? occ_peaks
    String? nuc_pos
    String? out
    Int? sep
    Int? min_occ
  }
  command <<<
    nucleoatac merge \
      ~{if defined(occ_peaks) then ("--occpeaks " +  '"' + occ_peaks + '"') else ""} \
      ~{if defined(nuc_pos) then ("--nucpos " +  '"' + nuc_pos + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(min_occ) then ("--min_occ " +  '"' + min_occ + '"') else ""}
  >>>
  parameter_meta {
    occ_peaks: "Output from occ utility"
    nuc_pos: "Output from nuc utility"
    out: "output file basename"
    sep: "minimum separation between call"
    min_occ: "minimum lower bound occupancy of nucleosomes to be considered for excluding NFR. default is 0.1"
  }
}