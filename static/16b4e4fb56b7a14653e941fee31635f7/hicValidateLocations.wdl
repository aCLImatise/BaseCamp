version 1.0

task HicValidateLocations {
  input {
    String? data
    String? protein
    String? method
    String? resolution
    String? out_filename
    Boolean? add_chr_prefix_loops
    Boolean? add_chr_prefix_protein
  }
  command <<<
    hicValidateLocations \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{true="--addChrPrefixLoops" false="" add_chr_prefix_loops} \
      ~{true="--addChrPrefixProtein" false="" add_chr_prefix_protein}
  >>>
  parameter_meta {
    data: "The loop file from hicDetectLoops. To use files from other sources, please follow 'chr start end chr start end' format."
    protein: "The protein peak file. Can be narrowPeak or broadPeak"
    method: "The loop file"
    resolution: "The used resolution of the Hi-C interaction matrix."
    out_filename: "The prefix name of the output files. Two file are written: output_matched_locations and output_statistics.First file contains all loop locations with protein location matches, second file contains statistics about this matching."
    add_chr_prefix_loops: "Adding a 'chr'-prefix to chromosome name of the loops."
    add_chr_prefix_protein: "Adding a 'chr'-prefix to chromosome name of the protein."
  }
}