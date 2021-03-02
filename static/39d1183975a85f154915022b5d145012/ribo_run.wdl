version 1.0

task RiboRun {
  input {
    File? reference_fast_a
    File? config
    Directory? outputdir__defaulttriboseedpipelineresults
    String? experiment_name
    String? kingdom
    Int? ss__specificfeatures
    Int? clusters
    File? cluster_file
    Int? fast_q_one
    Int? fast_q_two
    Int? fast_q_single_one
    Int? score_min
    String? ref_as_contig
    Boolean? linear
    String? sub_assembler
    Boolean? just_seed
    Int? flanking_length
    Int? kmers_kmers_used
    Boolean? force_km_ers
    Int? _prekmers_kmers
    Int? min_flank_depth
    Boolean? clean_temps
    Int? iterations
    Boolean? skip_control
    File? verbosity
    Int? cores
    Int? memory
    Boolean? damn_the_torpedos
    String? stages
    String? threads
    String? additional_libs
    Boolean? serialize
  }
  command <<<
    ribo run \
      ~{if defined(reference_fast_a) then ("--reference_fasta " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (outputdir__defaulttriboseedpipelineresults) then "-o" else ""} \
      ~{if defined(experiment_name) then ("--experiment_name " +  '"' + experiment_name + '"') else ""} \
      ~{if defined(kingdom) then ("--Kingdom " +  '"' + kingdom + '"') else ""} \
      ~{if defined(ss__specificfeatures) then ("-S " +  '"' + ss__specificfeatures + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(cluster_file) then ("--cluster_file " +  '"' + cluster_file + '"') else ""} \
      ~{if defined(fast_q_one) then ("--fastq1 " +  '"' + fast_q_one + '"') else ""} \
      ~{if defined(fast_q_two) then ("--fastq2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(fast_q_single_one) then ("--fastq_single1 " +  '"' + fast_q_single_one + '"') else ""} \
      ~{if defined(score_min) then ("--score_min " +  '"' + score_min + '"') else ""} \
      ~{if defined(ref_as_contig) then ("--ref_as_contig " +  '"' + ref_as_contig + '"') else ""} \
      ~{if (linear) then "--linear" else ""} \
      ~{if defined(sub_assembler) then ("--subassembler " +  '"' + sub_assembler + '"') else ""} \
      ~{if (just_seed) then "--just_seed" else ""} \
      ~{if defined(flanking_length) then ("--flanking_length " +  '"' + flanking_length + '"') else ""} \
      ~{if defined(kmers_kmers_used) then ("-k " +  '"' + kmers_kmers_used + '"') else ""} \
      ~{if (force_km_ers) then "--force_kmers" else ""} \
      ~{if defined(_prekmers_kmers) then ("-p " +  '"' + _prekmers_kmers + '"') else ""} \
      ~{if defined(min_flank_depth) then ("--min_flank_depth " +  '"' + min_flank_depth + '"') else ""} \
      ~{if (clean_temps) then "--clean_temps" else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if (skip_control) then "--skip_control" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if (damn_the_torpedos) then "--damn_the_torpedos" else ""} \
      ~{if defined(stages) then ("--stages " +  '"' + stages + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(additional_libs) then ("--additional_libs " +  '"' + additional_libs + '"') else ""} \
      ~{if (serialize) then "--serialize" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_fast_a: "path to a (multi)fasta or a directory containing one\\nor more chromosomal sequences in fasta format.\\nRequired, unless using a config file"
    config: "config file; if none given, create one; default: /"
    outputdir__defaulttriboseedpipelineresults: "/output/dir/, --output /output/dir/\\noutput directory; default:\\n/2020-09-10T0043_riboSeed_pipeline_results/"
    experiment_name: "prefix for results files; default: inferred"
    kingdom: "whether to look for eukaryotic, archaeal, or bacterial\\nrDNA; default: bac"
    ss__specificfeatures: ":23S:5S, --specific_features 16S:23S:5S\\ncolon:separated -- specific features; default:\\n16S:23S:5S"
    clusters: "number of rDNA clusters;if submitting multiple\\nrecords, must be a colon:separated list whose length\\nmatches number of genbank records. Default is inferred\\nfrom specific feature with fewest hits"
    cluster_file: "clustered_loci file output from riboSelect;this is\\ncreated by default from run_riboSeed, but if you don't\\nagree with the operon structure predicted by\\nriboSelect, you can use your alternate clustered_loci\\nfile. default: None"
    fast_q_one: "path to forward fastq file, can be compressed"
    fast_q_two: "path to reverse fastq file, can be compressed"
    fast_q_single_one: "path to single fastq file"
    score_min: "If using smalt, this sets the '-m' param; default with\\nsmalt is inferred from read length. If using BWA,\\nreads mapping with ASscore lower than this will be\\nrejected; default with BWA is half of read length"
    ref_as_contig: "ignore: reference will not be used in subassembly.\\ntrusted: SPAdes will use the seed sequences as a\\n--trusted-contig; untrusted: SPAdes will treat as\\n--untrusted-contig. infer: if mapping percentage over\\n80%, 'trusted'; else 'untrusted'. See SPAdes docs for\\ndetails. default: infer"
    linear: "if genome is known to not be circular and a region of\\ninterest (including flanking bits) extends past\\nchromosome end, this extends the seqence past\\nchromosome origin forward by --padding; default: False"
    sub_assembler: "assembler to use for subassembly scheme. SPAdes is\\nused by default, but Skesa is a new addition that\\nseems to work for subassembly and is faster"
    just_seed: "Don't do an assembly, just generate the long read\\n'seeds'; default: False"
    flanking_length: "length of flanking regions, in bp; default: 1000"
    kmers_kmers_used: ",33,55,77,99,127, --kmers 21,33,55,77,99,127\\nkmers used for final assembly, separated by commas\\nsuch as21,33,55,77,99,127. Can be set to 'auto', where\\nSPAdes chooses. We ensure kmers are not too big or too\\nclose to read length; default: 21,33,55,77,99,127"
    force_km_ers: "skip checking to see if kmerchoice is appropriate to\\nread length. Sometimes kmers longer than reads can\\nhelp in the final assembly, as the long reads\\ngenerated by riboSeed contain kmers longer than the\\nread length"
    _prekmers_kmers: ",33,55,77,99, --pre_kmers 21,33,55,77,99\\nkmers used during seeding assemblies, separated bt\\ncommas; default: 21,33,55,77,99"
    min_flank_depth: "a subassembly won't be performed if this minimum depth\\nis not achieved on both the 3' and5' end of the\\npseudocontig. default: 0"
    clean_temps: "if --clean_temps, mapping files will be removed once\\nthey are no no longer needed during the mapping\\niterations to save space; default: False"
    iterations: "if iterations>1, multiple seedings will occur after\\nsubassembly of seed regions; if setting --target_len,\\nseedings will continue until --iterations are\\ncompleted or --target_len is matched or exceeded;\\ndefault: 3"
    skip_control: "if --skip_control, no de novo assembly will be done;\\ndefault: False"
    verbosity: "Logger writes debug to file in output dir; this sets\\nverbosity level sent to stderr. 1 = debug(), 2 =\\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\\ndefault: 2"
    cores: "cores used; default: None"
    memory: "cores for multiprocessing; default: 8"
    damn_the_torpedos: "Ignore certain errors, full speed ahead!"
    stages: "[{sketch,spec,snag,score,stack,none} ...]\\nWhich assessment stages you wish to run: sketch, spec,\\nsnag, score, stack. Any combination thereof"
    threads: "if your cores are hyperthreaded, set number threads to\\nthe number of threads per processer.If unsure, see\\n'cat /proc/cpuinfo' under 'cpu cores', or 'lscpu'\\nunder 'Thread(s) per core'.: 1"
    additional_libs: "include these libraries in final assembly in addition\\nto the reads supplied as -F and -R. They must be\\nsupplied according to SPAdes arg naming scheme. Use at\\nown risk.default: None"
    serialize: "if --serialize, runs seeding and assembly without\\nmultiprocessing. We recommend this for machines with\\nless than 8GB RAM: False"
  }
  output {
    File out_stdout = stdout()
    Directory out_outputdir__defaulttriboseedpipelineresults = "${in_outputdir__defaulttriboseedpipelineresults}"
    File out_cluster_file = "${in_cluster_file}"
    File out_verbosity = "${in_verbosity}"
  }
}