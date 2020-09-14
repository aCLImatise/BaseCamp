version 1.0

task Anviprofile {
  input {
    File? input_file
    String? contigs_db
    Boolean? blank_profile
    File? output_dir
    Boolean? overwrite_output_destinations
    String? sample_name
    Boolean? report_variability_full
    Boolean? skip_snv_profiling
    Boolean? profile_s_cvs
    File? description
    Boolean? cluster_contigs
    Boolean? skip_hierarchical_clustering
    String? distance
    String? linkage
    Int? min_contig_length
    Int? max_contig_length
    Int? min_mean_coverage
    Int? min_coverage_for_variability
    Boolean? list_contigs
    File? contigs_of_interest
    Int? num_threads
    Int? queue_size
    Int? write_buffer_size_per_thread
    Boolean? force_multi
  }
  command <<<
    anvi_profile \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if (blank_profile) then "--blank-profile" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (overwrite_output_destinations) then "--overwrite-output-destinations" else ""} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{if (report_variability_full) then "--report-variability-full" else ""} \
      ~{if (skip_snv_profiling) then "--skip-SNV-profiling" else ""} \
      ~{if (profile_s_cvs) then "--profile-SCVs" else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if (cluster_contigs) then "--cluster-contigs" else ""} \
      ~{if (skip_hierarchical_clustering) then "--skip-hierarchical-clustering" else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(linkage) then ("--linkage " +  '"' + linkage + '"') else ""} \
      ~{if defined(min_contig_length) then ("--min-contig-length " +  '"' + min_contig_length + '"') else ""} \
      ~{if defined(max_contig_length) then ("--max-contig-length " +  '"' + max_contig_length + '"') else ""} \
      ~{if defined(min_mean_coverage) then ("--min-mean-coverage " +  '"' + min_mean_coverage + '"') else ""} \
      ~{if defined(min_coverage_for_variability) then ("--min-coverage-for-variability " +  '"' + min_coverage_for_variability + '"') else ""} \
      ~{if (list_contigs) then "--list-contigs" else ""} \
      ~{if defined(contigs_of_interest) then ("--contigs-of-interest " +  '"' + contigs_of_interest + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(queue_size) then ("--queue-size " +  '"' + queue_size + '"') else ""} \
      ~{if defined(write_buffer_size_per_thread) then ("--write-buffer-size-per-thread " +  '"' + write_buffer_size_per_thread + '"') else ""} \
      ~{if (force_multi) then "--force-multi" else ""}
  >>>
  parameter_meta {
    input_file: "Sorted and indexed BAM file to analyze. Takes a long\\ntime depending on the length of the file and\\nparameters used for profiling."
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen-\\ncontigs'"
    blank_profile: "If you only have contig sequences, but no mapping data\\n(i.e., you found a genome and would like to take a\\nlook from it), this flag will become very hand. After\\ncreating a contigs database for your contigs, you can\\ncreate a blank anvi'o profile database to use anvi'o\\ninteractive interface with that contigs database\\nwithout any mapping data."
    output_dir: "Directory path for output files"
    overwrite_output_destinations: "Overwrite if the output files and/or directories\\nexist."
    sample_name: "It is important to set a sample name (using only ASCII\\nletters and digits and without spaces) that is unique\\n(considering all others). If you do not provide one,\\nanvi'o will try to make up one for you based on other\\ninformation, although, you should never let the\\nsoftware to decide these things)."
    report_variability_full: "One of the things anvi-profile does is to store\\ninformation about variable nucleotide positions.\\nUsually it does not report every variable position,\\nsince not every variable position is genuine\\nvariation. Say, if you have 1,000 coverage, and all\\nnucleotides at that position are Ts and only one of\\nthem is a C, the confidence of that C being a real\\nvariation is quite low. anvi'o has a simple algorithm\\nin place to reduce the impact of noise. However, using\\nthis flag you can disable it and ask profiler to\\nreport every single variation (which may result in\\nvery large output files and millions of reports, but\\nyou are the boss). Do not forget to take a look at '--\\nmin-coverage-for-variability' parameter"
    skip_snv_profiling: "By default, anvi'o characterizes single-nucleotide\\nvariation in each sample. The use of this flag will\\ninstruct profiler to skip that step. Please remember\\nthat parameters and flags must be identical between\\ndifferent profiles using the same contigs database for\\nthem to merge properly."
    profile_s_cvs: "Anvi'o can perform accurate characterization of codon\\nfrequencies in genes during profiling. While having\\ncodon frequencies opens doors to powerful evolutionary\\ninsights in downstream analyses, due to its\\ncomputational complexity, this feature comes 'off' by\\ndefault. Using this flag you can rise against the\\nauthority, as you always should, and make anvi'o\\nprofile codons."
    description: "A plain text file that contains some description about\\nthe project. You can use Markdwon syntax. The\\ndescription text will be rendered and shown in all\\nrelevant interfaces, including the anvi'o interactive\\ninterface, or anvi'o summary outputs."
    cluster_contigs: "Single profiles are rarely used for genome binning or\\nvisualization, and since clustering step increases the\\nprofiling runtime for no good reason, the default\\nbehavior is to not cluster contigs for individual\\nruns. However, if you are planning to do binning on\\none sample, you must use this flag to tell anvi'o to\\nrun cluster configurations for single runs on your\\nsample."
    skip_hierarchical_clustering: "If you are not planning to use the interactive\\ninterface (or if you have other means to add a tree of\\ncontigs in the database) you may skip the step where\\nhierarchical clustering of your items are preformed\\nbased on default clustering recipes matching to your\\ndatabase type."
    distance: "The distance metric for the hierarchical clustering.\\nOnly relevant if you are using `--cluster-contigs`\\nflag. The default is \\\"euclidean\\\"."
    linkage: "The linkage method for the hierarchical clustering.\\nJust like the distance metric this is only relevant if\\nyou are using it with `--cluster-contigs` flag. The\\ndefault is \\\"ward\\\"."
    min_contig_length: "Minimum length of contigs in a BAM file to analyze.\\nThe minimum length should be long enough for tetra-\\nnucleotide frequency analysis to be meaningful. There\\nis no way to define a golden number of minimum length\\nthat would be applicable to genomes found in all\\nenvironments, but we chose the default to be 1000, and\\nhave been happy with it. You are welcome to\\nexperiment, but we advise to never go below 1,000. You\\nalso should remember that the lower you go, the more\\ntime it will take to analyze all contigs. You can use\\n--list-contigs parameter to have an idea how many\\ncontigs would be discarded for a given M."
    max_contig_length: "Just like the minimum contig length parameter, but to\\nset a maximum. Basically this will remove any contig\\nlonger than a certain value. Why would anyone need\\nthis? Who knows. But if you ever do, it is here."
    min_mean_coverage: "Minimum mean coverage for contigs to be kept in the\\nanalysis. The default value is 0, which is for your\\nbest interest if you are going to profile multiple BAM\\nfiles which are then going to be merged for a cross-\\nsectional or time series analysis. Do not change it if\\nyou are not sure this is what you want to do."
    min_coverage_for_variability: "Minimum coverage of a nucleotide position to be\\nsubjected to SNV profiling. By default, anvi'o will\\nnot attempt to make sense of variation in a given\\nnucleotide position if it is covered less than 10X.\\nYou can change that minimum using this parameter."
    list_contigs: "When declared, the program will list contigs in the\\nBAM file and exit gracefully without any further\\nanalysis."
    contigs_of_interest: "It is possible to analyze only a group of contigs from\\na given BAM file. If you provide a text file, in which\\nevery contig of interest is listed line by line, the\\nprofiler would engine only on those contigs in the BAM\\nfile and ignore the rest. This can be used for\\ndebugging purposes, or to engine on a particular group\\nof contigs that were identified as relevant during the\\ninteractive analysis."
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast."
    queue_size: "The queue size for worker threads to store data to\\ncommunicate to the main thread. The default is set by\\nthe class based on the number of threads. If you have\\n*any* hesitation about whether you know what you are\\ndoing, you should not change this value."
    write_buffer_size_per_thread: "How many items should be kept in memory before they\\nare written do the disk. The default is 500 per\\nthread. So a single-threaded job would have a write\\nbuffer size of 500, whereas a job with 4 threads would\\nhave a write buffer size of 4*500. The larger the\\nbuffer size, the less frequent the program will access\\nto the disk, yet the more memory will be consumed\\nsince the processed items will be cleared off the\\nmemory only after they are written to the disk. The\\ndefault buffer size will likely work for most cases.\\nPlease keep an eye on the memory usage output to make\\nsure the memory use never exceeds the size of the\\nphysical memory."
    force_multi: "This is not useful to non-developers. It forces the\\nmulti-process routine even when 1 thread is chosen.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}