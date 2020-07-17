version 1.0

task Confindr.py {
  input {
    String? input_directory
    String? output_name
    String? databases
    Boolean? rm_lst
    String? threads
    String? tmp
    Boolean? keep_files
    String? quality_cut_off
    String? base_cut_off
    String? base_fraction_cut_off
    String? forward_id
    String? reverse_id
    String? data_type
    String? x_mx
    String? cgm_lst
    Boolean? fast_a
    String? verbosity
    Boolean? cross_details
    Int? min_matching_hashes
  }
  command <<<
    confindr.py \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(output_name) then ("--output_name " +  '"' + output_name + '"') else ""} \
      ~{if defined(databases) then ("--databases " +  '"' + databases + '"') else ""} \
      ~{true="--rmlst" false="" rm_lst} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{true="--keep_files" false="" keep_files} \
      ~{if defined(quality_cut_off) then ("--quality_cutoff " +  '"' + quality_cut_off + '"') else ""} \
      ~{if defined(base_cut_off) then ("--base_cutoff " +  '"' + base_cut_off + '"') else ""} \
      ~{if defined(base_fraction_cut_off) then ("--base_fraction_cutoff " +  '"' + base_fraction_cut_off + '"') else ""} \
      ~{if defined(forward_id) then ("--forward_id " +  '"' + forward_id + '"') else ""} \
      ~{if defined(reverse_id) then ("--reverse_id " +  '"' + reverse_id + '"') else ""} \
      ~{if defined(data_type) then ("--data_type " +  '"' + data_type + '"') else ""} \
      ~{if defined(x_mx) then ("--Xmx " +  '"' + x_mx + '"') else ""} \
      ~{if defined(cgm_lst) then ("--cgmlst " +  '"' + cgm_lst + '"') else ""} \
      ~{true="--fasta" false="" fast_a} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="--cross_details" false="" cross_details} \
      ~{if defined(min_matching_hashes) then ("--min_matching_hashes " +  '"' + min_matching_hashes + '"') else ""}
  >>>
  parameter_meta {
    input_directory: "Folder that contains fastq files you want to check for contamination. Will find any file that contains .fq or .fastq in the filename."
    output_name: "Base name for output/temporary directories."
    databases: "Databases folder. To download these, you will need to get access to the rMLST databases. For complete instructions on how to do this, please see https://olc-bioinformatics.github.io/ConFindr/install/ #downloading-confindr-databases"
    rm_lst: "Activate to prefer using rMLST databases over core- gene derived databases. By default,ConFindr will use core-gene derived databases where available."
    threads: "Number of threads to run analysis with."
    tmp: "If your ConFindr databases are in a location you don't have write access to, you can enter this option to specify a temporary directory to put genus-specific databases to."
    keep_files: "By default, intermediate files are deleted. Activate this flag to keep intermediate files."
    quality_cut_off: "Base quality needed to support a multiple allele call. Defaults to 20."
    base_cut_off: "Number of bases necessary to support a multiple allele call. Defaults to 2."
    base_fraction_cut_off: "Fraction of bases necessary to support a multiple allele call. Particularly useful when dealing with very high coverage samples. Default is 0.05."
    forward_id: "Identifier for forward reads."
    reverse_id: "Identifier for reverse reads."
    data_type: "Type of input data. Default is Illumina, but can be used for Nanopore too. No PacBio support (yet)."
    x_mx: "Very occasionally, parts of the pipeline that use the BBMap suite will have their memory reservation fail and request not enough, or sometimes negative, memory. If this happens to you, you can use this flag to override automatic memory reservation and use an amount of memory requested by you. -Xmx 20g will specify 20 gigs of RAM, and -Xmx 800m will specify 800 megs."
    cgm_lst: "Path to a cgMLST database to use for contamination detection instead of using the default rMLST database. Sequences in this file should have headers in format >genename_allelenumber. To speed up ConFindr runs, clustering the cgMLST database with CD-HIT before running ConFindr is recommended. This is highly experimental, results should be interpreted with great care."
    fast_a: "If activated, will look for FASTA files instead of FASTQ for unpaired reads."
    verbosity: "Amount of output you want printed to the screen. Defaults to info, which should be good for most users."
    cross_details: "Continue ConFindr analyses on samples with two or more genera identified. Default is False"
    min_matching_hashes: "Minimum number of matching hashes in a MASH screen in order for a genus to be considered present in a sample. Default is 150"
  }
}