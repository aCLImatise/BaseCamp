version 1.0

task Confindr {
  input {
    Directory? input_directory
    String? output_name
    Directory? databases
    Boolean? rm_lst
    Int? threads
    Directory? tmp
    Boolean? keep_files
    Int? quality_cut_off
    Int? base_cut_off
    Float? base_fraction_cut_off
    String? forward_id
    String? reverse_id
    String? data_type
    Int? x_mx
    File? cgm_lst
    Boolean? fast_a
    String? verbosity
    Boolean? cross_details
    Int? min_matching_hashes
  }
  command <<<
    confindr \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(output_name) then ("--output_name " +  '"' + output_name + '"') else ""} \
      ~{if defined(databases) then ("--databases " +  '"' + databases + '"') else ""} \
      ~{if (rm_lst) then "--rmlst" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if (keep_files) then "--keep_files" else ""} \
      ~{if defined(quality_cut_off) then ("--quality_cutoff " +  '"' + quality_cut_off + '"') else ""} \
      ~{if defined(base_cut_off) then ("--base_cutoff " +  '"' + base_cut_off + '"') else ""} \
      ~{if defined(base_fraction_cut_off) then ("--base_fraction_cutoff " +  '"' + base_fraction_cut_off + '"') else ""} \
      ~{if defined(forward_id) then ("--forward_id " +  '"' + forward_id + '"') else ""} \
      ~{if defined(reverse_id) then ("--reverse_id " +  '"' + reverse_id + '"') else ""} \
      ~{if defined(data_type) then ("--data_type " +  '"' + data_type + '"') else ""} \
      ~{if defined(x_mx) then ("--Xmx " +  '"' + x_mx + '"') else ""} \
      ~{if defined(cgm_lst) then ("--cgmlst " +  '"' + cgm_lst + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (cross_details) then "--cross_details" else ""} \
      ~{if defined(min_matching_hashes) then ("--min_matching_hashes " +  '"' + min_matching_hashes + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_directory: "Folder that contains fastq files you want to check for\\ncontamination. Will find any file that contains .fq or\\n.fastq in the filename."
    output_name: "Base name for output/temporary directories."
    databases: "Databases folder. To download these, you will need to\\nget access to the rMLST databases. For complete\\ninstructions on how to do this, please see\\nhttps://olc-bioinformatics.github.io/ConFindr/install/\\n#downloading-confindr-databases"
    rm_lst: "Activate to prefer using rMLST databases over core-\\ngene derived databases. By default,ConFindr will use\\ncore-gene derived databases where available."
    threads: "Number of threads to run analysis with."
    tmp: "If your ConFindr databases are in a location you don't\\nhave write access to, you can enter this option to\\nspecify a temporary directory to put genus-specific\\ndatabases to."
    keep_files: "By default, intermediate files are deleted. Activate\\nthis flag to keep intermediate files."
    quality_cut_off: "Base quality needed to support a multiple allele call.\\nDefaults to 20."
    base_cut_off: "Number of bases necessary to support a multiple allele\\ncall. Defaults to 2."
    base_fraction_cut_off: "Fraction of bases necessary to support a multiple\\nallele call. Particularly useful when dealing with\\nvery high coverage samples. Default is 0.05."
    forward_id: "Identifier for forward reads."
    reverse_id: "Identifier for reverse reads."
    data_type: "Type of input data. Default is Illumina, but can be\\nused for Nanopore too. No PacBio support (yet)."
    x_mx: "Very occasionally, parts of the pipeline that use the\\nBBMap suite will have their memory reservation fail\\nand request not enough, or sometimes negative, memory.\\nIf this happens to you, you can use this flag to\\noverride automatic memory reservation and use an\\namount of memory requested by you. -Xmx 20g will\\nspecify 20 gigs of RAM, and -Xmx 800m will specify 800\\nmegs."
    cgm_lst: "Path to a cgMLST database to use for contamination\\ndetection instead of using the default rMLST database.\\nSequences in this file should have headers in format\\n>genename_allelenumber. To speed up ConFindr runs,\\nclustering the cgMLST database with CD-HIT before\\nrunning ConFindr is recommended. This is highly\\nexperimental, results should be interpreted with great\\ncare."
    fast_a: "If activated, will look for FASTA files instead of\\nFASTQ for unpaired reads."
    verbosity: "Amount of output you want printed to the screen.\\nDefaults to info, which should be good for most users."
    cross_details: "Continue ConFindr analyses on samples with two or more\\ngenera identified. Default is False"
    min_matching_hashes: "Minimum number of matching hashes in a MASH screen in\\norder for a genus to be considered present in a\\nsample. Default is 150\\n"
  }
  output {
    File out_stdout = stdout()
  }
}