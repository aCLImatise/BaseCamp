version 1.0

task RiboSeed {
  input {
    String? reference_genbank
    String? output_directory_default
    String? fast_q_one
    String? fast_q_two
    String? fast_qs_one
    String? flanking_length
    Boolean? just_seed
    String? experiment_name
    String? mapper
    String? km_ers
    String? pre_km_ers
    Boolean? force_km_ers
    String? score_min
    Int? min_assembly_len
    Boolean? include_shorts
    Boolean? damn_the_torpedos
    Boolean? subtract
    Boolean? linear
    Int? min_flank_depth
    String? sub_assembler
    String? ref_as_contig
    String? additional_libs
    Boolean? clean_temps
    Boolean? enable_spades_error_core_ction
    Boolean? skip_control
    String? iterations
    String? verbosity
    String? target_len
    Boolean? serialize
    Boolean? consensus
    String? s_malt_scoring
    String? mapper_args
    String? spades_exe
    String? sam_tools_exe
    String? skes_a_exe
    String? s_malt_exe
    String? bwa_exe
    String? quast_exe
    String? bcf_tools_exe
    String? cores
    String? threads
    String? memory
    String clustered_loci_txt
  }
  command <<<
    ribo seed \
      ~{clustered_loci_txt} \
      ~{if defined(reference_genbank) then ("--reference_genbank " +  '"' + reference_genbank + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(fast_q_one) then ("--fastq1 " +  '"' + fast_q_one + '"') else ""} \
      ~{if defined(fast_q_two) then ("--fastq2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(fast_qs_one) then ("--fastqS1 " +  '"' + fast_qs_one + '"') else ""} \
      ~{if defined(flanking_length) then ("--flanking_length " +  '"' + flanking_length + '"') else ""} \
      ~{true="--just_seed" false="" just_seed} \
      ~{if defined(experiment_name) then ("--experiment_name " +  '"' + experiment_name + '"') else ""} \
      ~{if defined(mapper) then ("--mapper " +  '"' + mapper + '"') else ""} \
      ~{if defined(km_ers) then ("--kmers " +  '"' + km_ers + '"') else ""} \
      ~{if defined(pre_km_ers) then ("--pre_kmers " +  '"' + pre_km_ers + '"') else ""} \
      ~{true="--force_kmers" false="" force_km_ers} \
      ~{if defined(score_min) then ("--score_min " +  '"' + score_min + '"') else ""} \
      ~{if defined(min_assembly_len) then ("--min_assembly_len " +  '"' + min_assembly_len + '"') else ""} \
      ~{true="--include_shorts" false="" include_shorts} \
      ~{true="--damn_the_torpedos" false="" damn_the_torpedos} \
      ~{true="--subtract" false="" subtract} \
      ~{true="--linear" false="" linear} \
      ~{if defined(min_flank_depth) then ("--min_flank_depth " +  '"' + min_flank_depth + '"') else ""} \
      ~{if defined(sub_assembler) then ("--subassembler " +  '"' + sub_assembler + '"') else ""} \
      ~{if defined(ref_as_contig) then ("--ref_as_contig " +  '"' + ref_as_contig + '"') else ""} \
      ~{if defined(additional_libs) then ("--additional_libs " +  '"' + additional_libs + '"') else ""} \
      ~{true="--clean_temps" false="" clean_temps} \
      ~{true="--enable-spades-error-corection" false="" enable_spades_error_core_ction} \
      ~{true="--skip_control" false="" skip_control} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(target_len) then ("--target_len " +  '"' + target_len + '"') else ""} \
      ~{true="--serialize" false="" serialize} \
      ~{true="--consensus" false="" consensus} \
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
    reference_genbank: "genbank reference, used to estimate insert sizes, and compare with QUAST"
    output_directory_default: "output directory; default: /tmp/tmpdvlbjbbn"
    fast_q_one: "forward fastq reads, can be compressed"
    fast_q_two: "reverse fastq reads, can be compressed"
    fast_qs_one: "single fastq reads"
    flanking_length: "length of flanking regions, in bp; default: 1000"
    just_seed: "Don't do an assembly, just generate the long read 'seeds'; default: False"
    experiment_name: "prefix for results files; default: riboSeed"
    mapper: "available mappers: smalt and bwa; default: bwa"
    km_ers: "kmers used for final assembly, separated by commas such as21,33,55,77,99,127 . Can be set to 'auto', where SPAdes chooses. We ensure kmers are not too big or too close to read length; default: 21,33,55,77,99,127"
    pre_km_ers: "kmers used during seeding assemblies, separated bt commas; default: 21,33,55,77,99"
    force_km_ers: "skip checking to see if kmerchoice is appropriate to read length. Sometimes kmers longer than reads can help in the final assembly, as the long reads generated by riboSeed contain kmers longer than the read length"
    score_min: "If using smalt, this sets the '-m' param; default with smalt is inferred from read length. If using BWA, reads mapping with ASscore lower than this will be rejected; default with BWA is half of read length"
    min_assembly_len: "if initial SPAdes assembly largest contig is not at least as long as --min_assembly_len, reject. Set this to the length of the seed sequence; if it is not achieved, seeding across regions will likely fail; default: 6000"
    include_shorts: "if assembled contig is smaller than --min_assembly_len, contig will still be included in assembly; default: inferred"
    damn_the_torpedos: "Ignore certain errors, full speed ahead!"
    subtract: "if --subtract reads already used in previousround of subassembly will not be included in subsequent rounds. This can lead to problems with multiple mapping and inflated coverage."
    linear: "if genome is known to not be circular and a region of interest (including flanking bits) extends past chromosome end, this extends the seqence past chromosome origin forward by --padding; default: False"
    min_flank_depth: "a subassembly will not be performed if this minimum depth is not achieved on both the 3' and5' end of the pseudocontig. default: 0"
    sub_assembler: "assembler to use for subassembly scheme. SPAdes is used by default, but Skesa is a new addition that seems to work for subassembly and is faster"
    ref_as_contig: "ignore: reference will not be used in subassembly. trusted: SPAdes will use the seed sequences as a --trusted-contig; untrusted: SPAdes will treat as --untrusted-contig. infer: if mapping percentage over 80%, 'trusted'; else 'untrusted'. See SPAdes docs for details. default: infer"
    additional_libs: "include this string (usually additional library, but could be other SPAdes args) these libraries in final assembly in addition to the reads supplied as -F and -R. They must be supplied according to SPAdes arg naming scheme. Use at own risk.default: None"
    clean_temps: "if --clean_temps, mapping files will be removed once they are no no longer needed during the mapping iterations to save space; default: False"
    enable_spades_error_core_ction: "Default behaviour should be to skip read error correction: http://cab.spbu.ru/benchmarking-tools-for- de-novo-microbial-assembly/ . This re-enables itdefault: False"
    skip_control: "if --skip_control, no de novo assembly will be done; default: False"
    iterations: "if iterations>1, multiple seedings will occur after subassembly of seed regions; if setting --target_len, seedings will continue until --iterations are completed or --target_len is matched or exceeded; default: 3"
    verbosity: "Logger writes debug to file in output dir; this sets verbosity level sent to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default: 2"
    target_len: "if set, iterations will continue until contigs reach this length, or max iterations (set by --iterations) have been completed. Set as fraction of original seed length by giving a decimal between 0 and 5, or set as an absolute number of base pairs by giving an integer greater than 50. Not used by default"
    serialize: "if --serialize, runs seeding and assembly without multiprocessing. This is recommended for machines with less than 8GB RAM: False"
    consensus: "if --initial_consensus, generate a mpileup-based consesnsus instead of doing a proper spades subassembly"
    s_malt_scoring: "if mapping with SMALT, submit custom smalt scoring via smalt -S scorespec option; default: match=1,subst=-4,gapopen=-4,gapext=-3"
    mapper_args: "submit custom parameters to mapper. And by mapper, I mean bwa, cause we dont support this option for SMALT, sorry. This requires knowledge of your chosen mapper's optional arguments. Proceed with caution! default: -L 0,0 -U 0 -a"
    spades_exe: "Path to SPAdes executable; default: spades.py"
    sam_tools_exe: "Path to samtools executable; default: samtools"
    skes_a_exe: "Path to skesa executable; default: skesa"
    s_malt_exe: "Path to smalt executable; default: smalt"
    bwa_exe: "Path to BWA executable; default: bwa"
    quast_exe: "Path to quast executable; default: quast"
    bcf_tools_exe: "Path to bcftools executable; default: bcftools"
    cores: "cores to be used; default: None"
    threads: "if your cores are hyperthreaded, set number threads to the number of threads per processer.If unsure, see 'cat /proc/cpuinfo' under 'cpu cores', or 'lscpu' under 'Thread(s) per core'.: 1"
    memory: "system memory available; default: 8"
    clustered_loci_txt: "output from riboSelect"
  }
}