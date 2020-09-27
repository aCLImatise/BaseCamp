version 1.0

task CreateKUnitigMaxOverlaps {
  input {
    Int? km_er_value
    File? create_coords_file
    Int? largest_kuni_tig_number
    String prefix_dot_coords
  }
  command <<<
    createKUnitigMaxOverlaps \
      ~{prefix_dot_coords} \
      ~{if defined(km_er_value) then ("-kmervalue " +  '"' + km_er_value + '"') else ""} \
      ~{if defined(create_coords_file) then ("-create-coords-file " +  '"' + create_coords_file + '"') else ""} \
      ~{if defined(largest_kuni_tig_number) then ("-largest-kunitig-number " +  '"' + largest_kuni_tig_number + '"') else ""}
  >>>
  parameter_meta {
    km_er_value: "to specify the k-mer size used when generating the k-unitigs."
    create_coords_file: "output the coords file as well as the overlaps file"
    largest_kuni_tig_number: "(in this case the"
    prefix_dot_coords: "and   prefix.overlaps."
  }
  output {
    File out_stdout = stdout()
    File out_create_coords_file = "${in_create_coords_file}"
  }
}