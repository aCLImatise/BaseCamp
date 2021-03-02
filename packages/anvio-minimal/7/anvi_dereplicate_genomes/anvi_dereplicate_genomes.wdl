version 1.0

task Anvidereplicategenomes {
  input {
    File? internal_genomes
    File? external_genomes
    File? fast_a_text_file
    File? ani_dir
    File? mash_dir
    File? output_dir
    Boolean? skip_fast_a_report
    Boolean? report_all
    String? program
    Int? fast_ani_km_er_size
    Int? fragment_length
    Int? min_fraction
    String? method
    Int? min_alignment_fraction
    Int? significant_alignment_length
    Boolean? use_full_percent_identity
    Int? min_full_percent_identity
    Int? km_er_size
    Int? scale
    Float? similarity_threshold
    String? cluster_method
    String? representative_method
    Int? num_threads
    Boolean? just_do_it
    Boolean? skip_checking_genome_hashes
    File? log_file
    String fast_a
  }
  command <<<
    anvi_dereplicate_genomes \
      ~{fast_a} \
      ~{if defined(internal_genomes) then ("--internal-genomes " +  '"' + internal_genomes + '"') else ""} \
      ~{if defined(external_genomes) then ("--external-genomes " +  '"' + external_genomes + '"') else ""} \
      ~{if defined(fast_a_text_file) then ("--fasta-text-file " +  '"' + fast_a_text_file + '"') else ""} \
      ~{if defined(ani_dir) then ("--ani-dir " +  '"' + ani_dir + '"') else ""} \
      ~{if defined(mash_dir) then ("--mash-dir " +  '"' + mash_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (skip_fast_a_report) then "--skip-fasta-report" else ""} \
      ~{if (report_all) then "--report-all" else ""} \
      ~{if defined(program) then ("--program " +  '"' + program + '"') else ""} \
      ~{if defined(fast_ani_km_er_size) then ("--fastani-kmer-size " +  '"' + fast_ani_km_er_size + '"') else ""} \
      ~{if defined(fragment_length) then ("--fragment-length " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(min_fraction) then ("--min-fraction " +  '"' + min_fraction + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(min_alignment_fraction) then ("--min-alignment-fraction " +  '"' + min_alignment_fraction + '"') else ""} \
      ~{if defined(significant_alignment_length) then ("--significant-alignment-length " +  '"' + significant_alignment_length + '"') else ""} \
      ~{if (use_full_percent_identity) then "--use-full-percent-identity" else ""} \
      ~{if defined(min_full_percent_identity) then ("--min-full-percent-identity " +  '"' + min_full_percent_identity + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(similarity_threshold) then ("--similarity-threshold " +  '"' + similarity_threshold + '"') else ""} \
      ~{if defined(cluster_method) then ("--cluster-method " +  '"' + cluster_method + '"') else ""} \
      ~{if defined(representative_method) then ("--representative-method " +  '"' + representative_method + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""} \
      ~{if (skip_checking_genome_hashes) then "--skip-checking-genome-hashes" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    internal_genomes: "A five-column TAB-delimited flat text file. The header\\nline must contain these columns: 'name', 'bin_id',\\n'collection_id', 'profile_db_path', 'contigs_db_path'.\\nEach line should list a single entry, where 'name' can\\nbe any name to describe the anvi'o bin identified as\\n'bin_id' that is stored in a collection. (default:\\nNone)"
    external_genomes: "A two-column TAB-delimited flat text file that lists\\nanvi'o contigs databases. The first item in the header\\nline should read 'name', and the second should read\\n'contigs_db_path'. Each line in the file should\\ndescribe a single entry, where the first column is the\\nname of the genome (or MAG), and the second column is\\nthe anvi'o contigs database generated for this genome.\\n(default: None)"
    fast_a_text_file: "A two-column TAB-delimited file that lists multiple\\nFASTA files to import for analysis. If using for\\n`anvi-dereplicate-genomes` or `anvi-compute-distance`,\\neach FASTA is assumed to be a genome. The first item\\nin the header line should read 'name', and the second\\nitem should read 'path'. Each line in the field should\\ndescribe a single entry, where the first column is the\\nname of the FASTA file or corresponding sequence, and\\nthe second column is the path to the FASTA file\\nitself. (default: None)"
    ani_dir: "You can import the directory created by `anvi-compute-\\ngenome-similarity` if `--program` parameter was set to\\n`fastANI` or `pyANI` and use it for dereplication\\n(default: None)"
    mash_dir: "You can import the directory created by `anvi-compute-\\ngenome-similarity` if `--program` parameter was set to\\n`sourmash` and use it for dereplication (default:\\nNone)"
    output_dir: "Directory path for output files (default: None)"
    skip_fast_a_report: "By default, if any sequence source is provided, FASTA\\nfiles of non-redundant genomes are reported. With this\\nflag, no FASTA files are reported. (default: False)"
    report_all: "By default, only FASTA files of non-redundant genomes\\nare reported, i.e. single representatives from each\\ncluster. With this flag, all genome FASTAS will be\\nreported. (default: False)"
    program: "Tell anvi'o which program to run to process genome\\nsimilarity. For ANI, you can either use pyANI or\\nfastANI. If accuracy is paramount (for example,\\ndistinguishing things less than 1 percent different),\\nor for dealing with genomes < 80 percent similar,\\npyANI is what we recommend. However, fastANI is much\\nfaster. If you for some reason want to use mash\\nsimilarity, you can use sourmash, but its really not\\nintended for genome comparisons. (default: None)"
    fast_ani_km_er_size: "Choose a kmer. The default is 16."
    fragment_length: "Choose a fragment length. The default is 3000."
    min_fraction: "Minimum fraction of alignment to be shared between\\ngenome pairs to calculate ANI. If reference and query\\ngenome size differ, smaller one among the two is\\nconsidered. The default is 0.25."
    method: "Method for pyANI. The default is ANIb. You must have\\nthe necessary binary in path for whichever method you\\nchoose. According to the pyANI help for v0.2.7 at\\nhttps://github.com/widdowquinn/pyani, the method\\n'ANIm' uses MUMmer (NUCmer) to align the input\\nsequences. 'ANIb' uses BLASTN+ to align 1020nt\\nfragments of the input sequences. 'ANIblastall': uses\\nthe legacy BLASTN to align 1020nt fragments Finally,\\n'TETRA': calculates tetranucleotide frequencies of\\neach input sequence"
    min_alignment_fraction: "In some cases you may get high raw ANI estimates\\n(percent identity scores) between two genomes that\\nhave little to do with each other simply because only\\na small fraction of their content may be aligned. This\\nfilter will set all ANI scores between two genomes to\\n0 if the alignment fraction is less than you deem\\ntrustable. When you set a value, anvi'o will go\\nthrough the ANI results, and set percent identity\\nscores between two genomes to 0 if the alignment\\nfraction *between either of them* is less than the\\nparameter described here. The default is 0.25."
    significant_alignment_length: "So --min-alignment-fraction discards any hit that is\\ncoming from alignments that represent shorter\\nfractions of genomes, but what if you still don't want\\nto miss an alignment that is longer than an X number\\nof nucleotides regardless of what fraction of the\\ngenome it represents? Well, this parameter is to\\nrecover things that may be lost due to --min-\\nalignment-fraction parameter. Let's say, if you set\\n--min-alignment-fraction to '0.05', and this parameter\\nto '5000', anvi'o will keep hits from alignments that\\nare longer than 5000 nts, EVEN IF THEY REPRESENT less\\nthan 5 percent of a given genome pair. Basically if\\n--min-alignment-fraction is your shield to protect\\nyourself from incoming garbage, --significant-\\nalignment-length is your chopstick to pick out those\\nthat may be interesting, and you are a true warrior\\nhere. (default: None)"
    use_full_percent_identity: "Usually, percent identity is calculated only over\\naligned regions, and this is what is used as a\\ndistance metric by default. But with this flag, you\\ncan instead use the *full* percent identity as the\\ndistance metric. It is the same as percent identity,\\nexcept that regions that did not align are included in\\nthe calculation. This means *full* percent identity\\nwill always be less than or equal to percent identity.\\nHow is it calculated? Well if P is the percentage\\nidentity calculated in aligned regions, L is the\\nlength of the genome, and A is the fraction of the\\ngenome that aligned to a compared genome, the full\\npercent identity is P * (A/L). In other words, it is\\nthe percent identity multiplied by the alignment\\ncoverage. For example, if the alignment is a whopping\\n97 percent identity but only 8 percent of the genome\\naligned, the *full* percent identity is 0.970 * 0.080\\n= 0.078, which is just 7.8 percent. (default: False)"
    min_full_percent_identity: "In some cases you may get high raw ANI estimates\\n(percent identity scores) between two genomes that\\nhave little to do with each other simply because only\\na small fraction of their content may be aligned. This\\ncan be partly alleviated by considering the *full*\\npercent identity, which includes in its calculation\\nregions that did not align. For example, if the\\nalignment is a whopping 97 percent identity but only 8\\npercent of the genome aligned, the *full* percent\\nidentity is 0.970 * 0.080 = 0.078 OR 7.8 percent.\\n*full* percent identity is always included in the\\nreport, but you can also use it as a filter for other\\nmetrics, such as percent identity. This filter will\\nset all ANI measures between two genomes to 0 if the\\n*full* percent identity is less than you deem\\ntrustable. When you set a value, anvi'o will go\\nthrough the ANI results, and set all ANI measures\\nbetween two genomes to 0 if the *full* percent\\nidentity *between either of them* is less than the\\nparameter described here. The default is 20."
    km_er_size: "Set the k-mer size for mash similarity checks. The\\ndefault is 13."
    scale: "Set the compression ratio for fasta signature file\\ncomputations. The default is 1000. Smaller ratios\\ndecrease sensitivity, while larger ratios will lead to\\nlarge fasta signatures. (default: 1000)"
    similarity_threshold: "If two genomes have a similarity greater than or equal\\nto this threshold, they will belong to the same\\ncluster. Since measures of 'similarity' depend\\nstrongly on what method is used for calculation, and\\nsince the threshold at which two genomes should be\\nconsidered 'similar enough' to be considered redundant\\nwill depend on the application, anvi'o refuses to\\nprovide a default parameter. If you're using pyANI,\\nmaybe 0.90 is what you're after. If you're using\\nsourmash, maybe 0.25 is what you're after. Or maybe\\nnot? Anvi'o is feeling nervous about this decision.\\n(default: None)"
    cluster_method: "Currently, genomes are clustered based on a simple\\ngreedy algorithm. Let's say your similarity threshold\\nis 0.90. If genome A is 0.95 similar to B, and B is\\n0.95 similar to C, and C is 0.95 similar to D, then\\n{A,B,C,D} will form a cluster. This is *even though* D\\nmay share a similarity to A of merely 0.80, which is\\nbelow similarity threshold. You want better\\nalternatives? Contact the developers with your ideas.\\n(default: simple_greedy)"
    representative_method: "After genomes are grouped into redundancy clusters,\\nyou can define how anvi'o picks the representative\\ngenome from the cluster. 'Qscore' computes the genome\\nwith the highest completion and lowest redundancy as\\nthe representative. 'length' returns the longest\\ngenome. 'centrality' returns the genome with the\\nhighest average similarity to everything in the\\ncluster, i.e. the most central. The default is\\ncentrality"
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast. (default: 1)"
    just_do_it: "Don't bother me with questions or warnings, just do\\nit. (default: False)"
    skip_checking_genome_hashes: "Use this flag if you would like anvi'o to skip\\nchecking genome hashes. This is only relevant if you\\nmay have genomes in your internal or external genomes\\nfiles that have identical sequences with different\\nnames AND if you are OK with it. You may be OK with\\nit, for instance, if you are using `anvi-dereplicate-\\ngenomes` program to dereplicate genomes desribed in\\nmultiple collections in an anvi'o profile database\\nthat may be describing the same genome multiple times\\n(see https://github.com/merenlab/anvio/issues/1397 for\\na case). (default: False)"
    log_file: "File path to store debug/output messages. (default:\\nNone)"
    fast_a: "🍺 More on `anvi-dereplicate-genomes`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
    File out_log_file = "${in_log_file}"
  }
}