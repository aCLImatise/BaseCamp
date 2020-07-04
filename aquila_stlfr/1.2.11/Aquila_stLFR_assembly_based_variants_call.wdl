version 1.0

task AquilaStLFRAssemblyBasedVariantsCall {
  input {
    String? chr_start
    String? chr_end
    String? var_size
    String? all_regions_flag
    String? clean_flag
    String? num_of_threads
    String? assembly_dir
    String? out_dir
    String? ref_file
  }
  command <<<
    Aquila_stLFR_assembly_based_variants_call \
      ~{if defined(chr_start) then ("--chr_start " +  '"' + chr_start + '"') else ""} \
      ~{if defined(chr_end) then ("--chr_end " +  '"' + chr_end + '"') else ""} \
      ~{if defined(var_size) then ("--var_size " +  '"' + var_size + '"') else ""} \
      ~{if defined(all_regions_flag) then ("--all_regions_flag " +  '"' + all_regions_flag + '"') else ""} \
      ~{if defined(clean_flag) then ("--clean_flag " +  '"' + clean_flag + '"') else ""} \
      ~{if defined(num_of_threads) then ("--num_of_threads " +  '"' + num_of_threads + '"') else ""} \
      ~{if defined(assembly_dir) then ("--assembly_dir " +  '"' + assembly_dir + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(ref_file) then ("--ref_file " +  '"' + ref_file + '"') else ""}
  >>>
  parameter_meta {
    chr_start: "chromosome start from, default = 1"
    chr_end: "chromosome end by, default = 23"
    var_size: "variant size, cut off size for indel and SV, default = 1"
    all_regions_flag: "1 is for variants calling in all regions (including some regions with haploid assemblies), default = 0 for diploid regions"
    clean_flag: "1 for cleaning all intermediate files, default = 0: keep all intermediate files"
    num_of_threads: "number of threads, default = 1"
    assembly_dir: "Required parameter, folder to store Aquila assembly results at Aquila assembly steps"
    out_dir: "Directory to store outputs, default = ./Aquila_Variant_Results"
    ref_file: "Required parameter, reference fasta file, run ./install.sh to dowload GRCh38 human reference fasta"
  }
}