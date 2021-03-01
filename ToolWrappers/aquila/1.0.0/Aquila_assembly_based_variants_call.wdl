version 1.0

task AquilaAssemblyBasedVariantsCall {
  input {
    Int? chr_start
    Int? chr_end
    Int? var_size
    Int? all_regions_flag
    Int? clean_flag
    Int? num_of_threads
    Directory? assembly_dir
    Directory? out_dir
    File? required_parameter_reference
    String run_depth_all
  }
  command <<<
    Aquila_assembly_based_variants_call \
      ~{run_depth_all} \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(var_size) then ("--var_size " +  '"' + var_size + '"') else ""} \
      ~{if defined(all_regions_flag) then ("--all_regions_flag " +  '"' + all_regions_flag + '"') else ""} \
      ~{if defined(clean_flag) then ("--clean_flag " +  '"' + clean_flag + '"') else ""} \
      ~{if defined(num_of_threads) then ("--num_of_threads " +  '"' + num_of_threads + '"') else ""} \
      ~{if defined(assembly_dir) then ("--assembly_dir " +  '"' + assembly_dir + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(required_parameter_reference) then ("--ref_file " +  '"' + required_parameter_reference + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    chr_start: "chromosome start from, default = 1"
    chr_end: "chromosome end by, default = 23"
    var_size: "variant size, cut off size for indel and SV, default =\\n1"
    all_regions_flag: "1 is for variants calling in all regions (including\\nsome regions with haploid assemblies), default = 0 for\\ndiploid regions"
    clean_flag: "1 for cleaning all intermediate files, default = 0:\\nkeep all intermediate files"
    num_of_threads: "number of threads, default = 1"
    assembly_dir: "Required parameter, folder to store Aquila assembly\\nresults at Aquila assembly steps"
    out_dir: "Directory to store outputs, default =\\n./Aquila_Variant_Results"
    required_parameter_reference: "Required parameter, reference fasta file, run\\n./install.sh to dowload GRCh38 human reference fasta\\n"
    run_depth_all: "Run depth all:"
  }
  output {
    File out_stdout = stdout()
  }
}