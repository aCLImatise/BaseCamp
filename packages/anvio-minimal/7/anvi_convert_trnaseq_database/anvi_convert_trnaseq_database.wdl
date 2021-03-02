version 1.0

task Anviconverttrnaseqdatabase {
  input {
    File? project_name
    Int? max_reported_trna_seeds
    Boolean? overwrite_output_destinations
    File? description
    String? feature_threshold
    String? preferred_treatment
    Int? nonspecific_output
    Float? min_variation
    Float? min_third_fourth_nt
    Float? min_del_fraction
    String? distance
    String? linkage
    File? o
    String experiment
    String trna_seq_db
  }
  command <<<
    anvi_convert_trnaseq_database \
      ~{experiment} \
      ~{trna_seq_db} \
      ~{if defined(project_name) then ("--project-name " +  '"' + project_name + '"') else ""} \
      ~{if defined(max_reported_trna_seeds) then ("--max-reported-trna-seeds " +  '"' + max_reported_trna_seeds + '"') else ""} \
      ~{if (overwrite_output_destinations) then "--overwrite-output-destinations" else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(feature_threshold) then ("--feature-threshold " +  '"' + feature_threshold + '"') else ""} \
      ~{if defined(preferred_treatment) then ("--preferred-treatment " +  '"' + preferred_treatment + '"') else ""} \
      ~{if defined(nonspecific_output) then ("--nonspecific-output " +  '"' + nonspecific_output + '"') else ""} \
      ~{if defined(min_variation) then ("--min-variation " +  '"' + min_variation + '"') else ""} \
      ~{if defined(min_third_fourth_nt) then ("--min-third-fourth-nt " +  '"' + min_third_fourth_nt + '"') else ""} \
      ~{if defined(min_del_fraction) then ("--min-del-fraction " +  '"' + min_del_fraction + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(linkage) then ("--linkage " +  '"' + linkage + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    project_name: "Name of the project. Please choose a short but\\ndescriptive name (so anvi'o can use it whenever she\\nneeds to name an output file, or add a new table in a\\ndatabase, or name her first born). (default: None)"
    max_reported_trna_seeds: "This parameter limits the number of tRNA seed\\nsequences reported in the contigs database, as anvi-\\ninteractive can have trouble displaying large numbers\\nof items. To remove the limit on reported seeds,\\nspecify a value of -1. (default: 10000)"
    overwrite_output_destinations: "Overwrite if the output files and/or directories\\nexist. (default: False)"
    description: "A plain text file that contains some description about\\nthe project. You can use Markdown syntax. The\\ndescription text will be rendered and shown in all\\nrelevant interfaces, including the anvi'o interactive\\ninterface, or anvi'o summary outputs. (default: None)"
    feature_threshold: "This option prevents formation of tRNA seed sequences\\nfrom input sequences that did not reach the threshold\\nfeature in anvi-trnaseq profiling from the 3' end. The\\nmore stringent the threshold, the fewer spurious seeds\\nare formed from rare chimeric and other inaccurate\\ntRNA predictions. The most stringent threshold is\\n\\\"acceptor_stem\\\", the most 5' feature, resulting in\\nseeds formed only from tRNAs with a complete feature\\nset (with the exception of the extra 5'-G in tRNA-\\nHis). (default: anticodon_loop)"
    preferred_treatment: "tRNA-seq databases recorded as employing the preferred\\ntreatment are given preference in setting nucleotides\\nat predicted modification positions in tRNA seed\\nsequences. By default, equal preference is given to\\nall of the input databases. The reason for this\\nparameter is that paired untreated and enzymatically\\ntreated splits can assist in the identification of\\nunderlying modified nucleotides. For example, splits\\ntreated with a demethylase can be compared to\\nuntreated splits to probe which nucleotides are\\nmethylated. (default: None)"
    nonspecific_output: "A significant fraction of tRNA-seq reads can be from\\ntRNA fragments. These can be real biomolecules or\\nartifactual 3' fragments produced as a result of\\nincomplete reverse transcription of the tRNA template\\nto cDNA. Rather than randomly assigning fragments to a\\nsingle target, as in metagenomic read recruitment by\\nBowtie, anvi-trnaseq tracks all of the longer\\nsequences containing each fragment. This results in\\ntwo categories of coverage: 'specific' for reads that\\nare only found in one seed and 'nonspecific' for reads\\nfound in multiple seeds. Specific coverages are always\\nreported in a separate profile database. Nonspecific\\ncoverages can be reported in three types of database,\\nas specified by this parameter. 'nonspecific_db'\\nproduces a profile database only containing\\nnonspecific coverages. 'combined_db' produces a\\ndatabase containing separate specific and nonspecific\\nlayers. 'summed_db' produces a database containing\\nsummed specific and nonspecific coverages. To produce\\nmultiple types of databases, separate the database\\ntypes with commas (no spaces). For example, all three\\ndatabases are produced with the argument,\\n'nonspecific_db,combined_db,summed_db'. (default:\\nnonspecific_db,combined_db)"
    min_variation: "When more than 2 nucleotides are found at a position\\nin a tRNA, a modification-induced mutation\\n(substitution) is considered rather than a single\\nnucleotide variant. This parameter sets a key\\ncriterion for the prediction of a modification, the\\nminimum fraction of specific coverage at a position\\nwith more than 2 nucleotides that must be contributed\\nby nucleotides beside the most abundant nucleotide.\\nFor example, if A, C, and G are found at position 20\\nof a tRNA, and A is represented by 95 reads, C by 3\\nreads, and G by 1 read, then with a parameter value of\\n0.05, the site would be 1 C, G, or T short of meeting\\nthe threshold for prediction of a modification.\\n(default: 0.01)"
    min_third_fourth_nt: "This parameter sets a key criterion for the prediction\\nof a modification, the minimum fraction of specific\\ncoverage at a position with more than 2 nucleotides\\nthat must be contributed by nucleotides beside the 2\\nmost abundant nucleotides. Unlike --min-variation,\\nthis criterion only needs to be met for 1 sample to\\npermit modification of the position in all samples of\\nthe experiment. For example, consider an experiment\\nwith 2 samples and a parameter value of 0.01. In\\nSample 1, A, C, and G are found at position 20 of a\\ntRNA, and A is represented by 95 reads, C by 4 reads,\\nand G by 1 read. The default parameter value of 0.01\\nis exactly met at the position thanks to G. In Sample\\n2, A, C, G, and T are found at position 20 of the same\\ntRNA seed, and A is represented by 1000 reads, C by\\n100 reads, G by 2 reads, and T by 2 reads. The third\\nand fourth nucleotides don't meet the coverage\\nthreshold of 0.01, but this is irrelevant for calling\\nthe modification, since Sample 1 met the criterion.\\nThere is an important consideration due to the way\\nthis threshold is currently imposed. Potential\\nmodification sites that do not meet the threshold are\\nnot treated like single nucleotide variants in anvi-\\ntrnaseq: they do not cause the seed sequence to be\\nsplit such that no seed contains a variant that was\\nnot deemed to be a modification. Rather, candidate\\nmodification positions that do not meet this threshold\\nare retained in the seed BUT NOT REPORTED. Therefore,\\nwe recommend rerunning this command with a parameter\\nvalue of 0 to inspect seeds for undisplayed variants\\n(possible SNVs) with a low level of third and fourth\\nnucleotides. (default: 0.002)"
    min_del_fraction: "This parameter controls which deletions are reported\\nin the tRNA-seq profile database. Coverage of a\\ndeletion in a sample must meet the minimum fraction of\\nspecific coverage. Deletion coverages are calculated\\nseparately for specific, nonspecific, and summed\\ncoverages. (default: 0.01)"
    distance: "The distance metric for the hierarchical clustering.\\nThe default distance metric is 'euclidean'. You can\\nfind the full list of distance metrics either by\\nmaking a mistake (such as entering a non-existent\\ndistance metric and making anvi'o upset), or by taking\\na look at the help menu of the\\nhierarchy.distance.pdist function in the scipy.cluster\\nmodule."
    linkage: "The linkage method for the hierarchical clustering.\\nThe default linkage method is 'ward', because that is\\nthe best one. It really is. We talked to a lot of\\npeople and they were all like 'this is the best one\\navailable' and it is just all out there. Honestly it\\nis so good that we will build a wall around it and\\nmake other linkage methods pay for it. But if you want\\nto see a full list of available ones you can check the\\nhierarcy.linkage function in the scipy.cluster module.\\nUp to you really. But then you can't use ward anymore,\\nand you would have to leave anvi'o right now."
    o: ""
    experiment: "-o DIR_PATH, --output-dir DIR_PATH"
    trna_seq_db: "🍕 Can provide: "
  }
  output {
    File out_stdout = stdout()
    File out_project_name = "${in_project_name}"
  }
}