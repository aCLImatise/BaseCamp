version 1.0

task Analyzereaddepth {
  input {
    String? verbose
    String? flag_regions_val
    String? cluster_regions_bp
    File? only_use_list
    Boolean? print_contig_iids
    Boolean? just_compute_depth
    String? only_use_contigs
    Boolean? print_depth_contig
    Boolean? use_ungapped_length
    String bank
  }
  command <<<
    analyze_read_depth \
      ~{bank} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(flag_regions_val) then ("-x " +  '"' + flag_regions_val + '"') else ""} \
      ~{if defined(cluster_regions_bp) then ("-c " +  '"' + cluster_regions_bp + '"') else ""} \
      ~{if defined(only_use_list) then ("-I " +  '"' + only_use_list + '"') else ""} \
      ~{if (print_contig_iids) then "-i" else ""} \
      ~{if (just_compute_depth) then "-d" else ""} \
      ~{if defined(only_use_contigs) then ("-l " +  '"' + only_use_contigs + '"') else ""} \
      ~{if (print_depth_contig) then "-r" else ""} \
      ~{if (use_ungapped_length) then "-u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "a verbose output"
    flag_regions_val: "Flag regions val x times the global average depth"
    cluster_regions_bp: "Cluster regions within <dist> bp"
    only_use_list: "Only use list of contigs iids in file for computing average"
    print_contig_iids: "Print contig IIDs instead of EIDs"
    just_compute_depth: "Just compute the depth. This returns a line with 4 values:\\nthe minimum contig length considered, number of contigs\\nsum of contig lengths and the average contig depth"
    only_use_contigs: "Only use contigs >= len for computing average"
    print_depth_contig: "Print the depth for each contig"
    use_ungapped_length: "Use ungapped length for reports"
    bank: ""
  }
  output {
    File out_stdout = stdout()
  }
}