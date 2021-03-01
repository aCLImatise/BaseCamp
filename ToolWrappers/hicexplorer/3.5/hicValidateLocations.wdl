version 1.0

task HicValidateLocations {
  input {
    File? data
    File? protein
    String? method
    String? resolution
    File? out_filename
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
      ~{if (add_chr_prefix_loops) then "--addChrPrefixLoops" else ""} \
      ~{if (add_chr_prefix_protein) then "--addChrPrefixProtein" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data: "The loop file from hicDetectLoops. To use files from\\nother sources, please follow 'chr start end chr start\\nend' format."
    protein: "The protein peak file. Can be narrowPeak or broadPeak"
    method: "The loop file"
    resolution: "The used resolution of the Hi-C interaction matrix."
    out_filename: "The prefix name of the output files. Two file are\\nwritten: output_matched_locations and\\noutput_statistics.First file contains all loop\\nlocations with protein location matches, second file\\ncontains statistics about this matching."
    add_chr_prefix_loops: "Adding a 'chr'-prefix to chromosome name of the loops."
    add_chr_prefix_protein: "Adding a 'chr'-prefix to chromosome name of the\\nprotein."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}