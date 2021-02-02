version 1.0

task RiboSeed {
  input {
    String? reference_genbank
    Directory? output_directory_default
    Int? fast_q_one
    Int? fast_q_two
    Int? fast_qs_one
    Int? flanking_length
    Boolean? just_seed
    String? experiment_name
    String? mapper
    Int? km_ers
    Int? pre_km_ers
    Boolean? force_km_ers
    Int? score_min
    Int? min_assembly_len
    Boolean? include_shorts
    Boolean? subtract
    Boolean? linear
    Int? min_flank_depth
    String? sub_assembler
    String? ref_as_contig
    String? additional_libs
    Boolean? clean_temps
    Boolean? enable_spades_error_core_ction
    Boolean? skip_control
    Int? iterations
    File? verbosity
    Float? target_len
    Boolean? serialize
    Boolean? consensus
    Int? s_malt_scoring
    Int? mapper_args
    File? spades_exe
    File? sam_tools_exe
    File? skes_a_exe
    File? s_malt_exe
    File? bwa_exe
    File? quast_exe
    File? bcf_tools_exe
    String? cores
    String? threads
    Int? memory
    String inferred
  }
  command <<<
    ribo seed \
      ~{inferred} \
      ~{if defined(reference_genbank) then ("--reference_genbank " +  '"' + reference_genbank + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(fast_q_one) then ("--fastq1 " +  '"' + fast_q_one + '"') else ""} \
      ~{if defined(fast_q_two) then ("--fastq2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(fast_qs_one) then ("--fastqS1 " +  '"' + fast_qs_one + '"') else ""} \
      ~{if defined(flanking_length) then ("--flanking_length " +  '"' + flanking_length + '"') else ""} \
      ~{if (just_seed) then "--just_seed" else ""} \
      ~{if defined(experiment_name) then ("--experiment_name " +  '"' + experiment_name + '"') else ""} \
      ~{if defined(mapper) then ("--mapper " +  '"' + mapper + '"') else ""} \
      ~{if defined(km_ers) then ("--kmers " +  '"' + km_ers + '"') else ""} \
      ~{if defined(pre_km_ers) then ("--pre_kmers " +  '"' + pre_km_ers + '"') else ""} \
      ~{if (force_km_ers) then "--force_kmers" else ""} \
      ~{if defined(score_min) then ("--score_min " +  '"' + score_min + '"') else ""} \
      ~{if defined(min_assembly_len) then ("--min_assembly_len " +  '"' + min_assembly_len + '"') else ""} \
      ~{if (include_shorts) then "--include_shorts" else ""} \
      ~{if (subtract) then "--subtract" else ""} \
      ~{if (linear) then "--linear" else ""} \
      ~{if defined(min_flank_depth) then ("--min_flank_depth " +  '"' + min_flank_depth + '"') else ""} \
      ~{if defined(sub_assembler) then ("--subassembler " +  '"' + sub_assembler + '"') else ""} \
      ~{if defined(ref_as_contig) then ("--ref_as_contig " +  '"' + ref_as_contig + '"') else ""} \
      ~{if defined(additional_libs) then ("--additional_libs " +  '"' + additional_libs + '"') else ""} \
      ~{if (clean_temps) then "--clean_temps" else ""} \
      ~{if (enable_spades_error_core_ction) then "--enable-spades-error-corection" else ""} \
      ~{if (skip_control) then "--skip_control" else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(target_len) then ("--target_len " +  '"' + target_len + '"') else ""} \
      ~{if (serialize) then "--serialize" else ""} \
      ~{if (consensus) then "--consensus" else ""} \
      ~{if defined(s_malt_scoring) then ("--smalt_scoring " +  '"' + s_malt_scoring + '"') else ""} \
      ~{if defined(mapper_args) then ("--mapper_args " +  '"' + mapper_args + '"') else ""} \
      ~{if defined(spades_exe) then ("--spades_exe " +  '"' + spades_exe + '"') else ""} \
      ~{if defined(sam_tools_exe) then ("--samtools_exe " +  '"' + sam_tools_exe + '"') else ""} \
      ~{if defined(skes_a_exe) then ("--skesa_exe " +  '"' + skes_a_exe + '"') else ""} \
      ~{if defined(s_malt_exe) then ("--smalt_exe " +  '"' + s_malt_exe + '"') else ""} \
      ~{if defined(bwa_exe) then ("--bwa_exe " +  '"' + bwa_exe + '"') else ""} \
      ~{if defined(quast_exe) then ("--quast_exe " +  '"' + quast_exe + '"') else ""} \
      ~{if defined(bcf_tools_exe) then ("--bcftools_exe " +  '"' + bcf_tools_exe + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""}
  >>>
  parameter_meta {
    reference_genbank: "genbank reference, used to estimate insert sizes, and\\ncompare with QUAST"
    output_directory_default: "output directory; default: /"
    fast_q_one: "forward fastq reads, can be compressed"
    fast_q_two: "reverse fastq reads, can be compressed"
    fast_qs_one: "single fastq reads"
    flanking_length: "length of flanking regions, in bp; default: 1000"
    just_seed: "Don't do an assembly, just generate the long read\\n'seeds'; default: False"
    experiment_name: "prefix for results files; default: riboSeed"
    mapper: "available mappers: smalt and bwa; default: bwa"
    km_ers: "kmers used for final assembly, separated by commas\\nsuch as21,33,55,77,99,127 . Can be set to 'auto',\\nwhere SPAdes chooses. We ensure kmers are not too big\\nor too close to read length; default:\\n21,33,55,77,99,127"
    pre_km_ers: "kmers used during seeding assemblies, separated bt\\ncommas; default: 21,33,55,77,99"
    force_km_ers: "skip checking to see if kmerchoice is appropriate to\\nread length. Sometimes kmers longer than reads can\\nhelp in the final assembly, as the long reads\\ngenerated by riboSeed contain kmers longer than the\\nread length"
    score_min: "If using smalt, this sets the '-m' param; default with\\nsmalt is inferred from read length. If using BWA,\\nreads mapping with ASscore lower than this will be\\nrejected; default with BWA is half of read length"
    min_assembly_len: "if initial SPAdes assembly largest contig is not at\\nleast as long as --min_assembly_len, reject. Set this\\nto the length of the seed sequence; if it is not\\nachieved, seeding across regions will likely fail;\\ndefault: 6000"
    include_shorts: "if assembled contig is smaller than"
    subtract: "if --subtract reads already used in previousround of\\nsubassembly will not be included in subsequent rounds.\\nThis can lead to problems with multiple mapping and\\ninflated coverage."
    linear: "if genome is known to not be circular and a region of\\ninterest (including flanking bits) extends past\\nchromosome end, this extends the seqence past\\nchromosome origin forward by --padding; default: False"
    min_flank_depth: "a subassembly will not be performed if this minimum\\ndepth is not achieved on both the 3' and5' end of the\\npseudocontig. default: 0"
    sub_assembler: "assembler to use for subassembly scheme. SPAdes is\\nused by default, but Skesa is a new addition that\\nseems to work for subassembly and is faster"
    ref_as_contig: "ignore: reference will not be used in subassembly.\\ntrusted: SPAdes will use the seed sequences as a\\n--trusted-contig; untrusted: SPAdes will treat as\\n--untrusted-contig. infer: if mapping percentage over\\n80%, 'trusted'; else 'untrusted'. See SPAdes docs for\\ndetails. default: infer"
    additional_libs: "include this string (usually additional library, but\\ncould be other SPAdes args) these libraries in final\\nassembly in addition to the reads supplied as -F and\\n-R. They must be supplied according to SPAdes arg\\nnaming scheme. Use at own risk.default: None"
    clean_temps: "if --clean_temps, mapping files will be removed once\\nthey are no no longer needed during the mapping\\niterations to save space; default: False"
    enable_spades_error_core_ction: "Default behaviour should be to skip read error\\ncorrection: http://cab.spbu.ru/benchmarking-tools-for-\\nde-novo-microbial-assembly/ . This re-enables\\nitdefault: False"
    skip_control: "if --skip_control, no de novo assembly will be done;\\ndefault: False"
    iterations: "if iterations>1, multiple seedings will occur after\\nsubassembly of seed regions; if setting --target_len,\\nseedings will continue until --iterations are\\ncompleted or --target_len is matched or exceeded;\\ndefault: 3"
    verbosity: "Logger writes debug to file in output dir; this sets\\nverbosity level sent to stderr. 1 = debug(), 2 =\\ninfo(), 3 = warning(), 4 = error() and 5 = critical();\\ndefault: 2"
    target_len: "if set, iterations will continue until contigs reach\\nthis length, or max iterations (set by --iterations)\\nhave been completed. Set as fraction of original seed\\nlength by giving a decimal between 0 and 5, or set as\\nan absolute number of base pairs by giving an integer\\ngreater than 50. Not used by default"
    serialize: "if --serialize, runs seeding and assembly without\\nmultiprocessing. This is recommended for machines with\\nless than 8GB RAM: False"
    consensus: "if --initial_consensus, generate a mpileup-based\\nconsesnsus instead of doing a proper spades\\nsubassembly"
    s_malt_scoring: "if mapping with SMALT, submit custom smalt scoring via\\nsmalt -S scorespec option; default:\\nmatch=1,subst=-4,gapopen=-4,gapext=-3"
    mapper_args: "submit custom parameters to mapper. And by mapper, I\\nmean bwa, cause we dont support this option for SMALT,\\nsorry. This requires knowledge of your chosen mapper's\\noptional arguments. Proceed with caution! default: -L\\n0,0 -U 0 -a"
    spades_exe: "Path to SPAdes executable; default: spades.py"
    sam_tools_exe: "Path to samtools executable; default: samtools"
    skes_a_exe: "Path to skesa executable; default: skesa"
    s_malt_exe: "Path to smalt executable; default: smalt"
    bwa_exe: "Path to BWA executable; default: bwa"
    quast_exe: "Path to quast executable; default: quast"
    bcf_tools_exe: "Path to bcftools executable; default: bcftools"
    cores: "cores to be used; default: None"
    threads: "if your cores are hyperthreaded, set number threads to\\nthe number of threads per processer.If unsure, see\\n'cat /proc/cpuinfo' under 'cpu cores', or 'lscpu'\\nunder 'Thread(s) per core'.: 1"
    memory: "system memory available; default: 8"
    inferred: "--damn_the_torpedos   Ignore certain errors, full speed ahead!"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
    File out_verbosity = "${in_verbosity}"
  }
}