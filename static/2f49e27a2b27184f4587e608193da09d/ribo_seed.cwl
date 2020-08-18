class: CommandLineTool
id: ../../../ribo_seed.cwl
inputs:
- id: reference_genbank
  doc: genbank reference, used to estimate insert sizes, and compare with QUAST
  type: string
  inputBinding:
    prefix: --reference_genbank
- id: output
  doc: 'output directory; default: /tmp/tmpdvlbjbbn'
  type: string
  inputBinding:
    prefix: --output
- id: fast_q_one
  doc: forward fastq reads, can be compressed
  type: string
  inputBinding:
    prefix: --fastq1
- id: fast_q_two
  doc: reverse fastq reads, can be compressed
  type: string
  inputBinding:
    prefix: --fastq2
- id: fast_qs_one
  doc: single fastq reads
  type: string
  inputBinding:
    prefix: --fastqS1
- id: flanking_length
  doc: 'length of flanking regions, in bp; default: 1000'
  type: string
  inputBinding:
    prefix: --flanking_length
- id: just_seed
  doc: "Don't do an assembly, just generate the long read 'seeds'; default: False"
  type: boolean
  inputBinding:
    prefix: --just_seed
- id: experiment_name
  doc: 'prefix for results files; default: riboSeed'
  type: string
  inputBinding:
    prefix: --experiment_name
- id: mapper
  doc: 'available mappers: smalt and bwa; default: bwa'
  type: string
  inputBinding:
    prefix: --mapper
- id: km_ers
  doc: "kmers used for final assembly, separated by commas such as21,33,55,77,99,127\
    \ . Can be set to 'auto', where SPAdes chooses. We ensure kmers are not too big\
    \ or too close to read length; default: 21,33,55,77,99,127"
  type: string
  inputBinding:
    prefix: --kmers
- id: pre_km_ers
  doc: 'kmers used during seeding assemblies, separated bt commas; default: 21,33,55,77,99'
  type: string
  inputBinding:
    prefix: --pre_kmers
- id: force_km_ers
  doc: skip checking to see if kmerchoice is appropriate to read length. Sometimes
    kmers longer than reads can help in the final assembly, as the long reads generated
    by riboSeed contain kmers longer than the read length
  type: boolean
  inputBinding:
    prefix: --force_kmers
- id: score_min
  doc: If using smalt, this sets the '-m' param; default with smalt is inferred from
    read length. If using BWA, reads mapping with ASscore lower than this will be
    rejected; default with BWA is half of read length
  type: string
  inputBinding:
    prefix: --score_min
- id: min_assembly_len
  doc: 'if initial SPAdes assembly largest contig is not at least as long as --min_assembly_len,
    reject. Set this to the length of the seed sequence; if it is not achieved, seeding
    across regions will likely fail; default: 6000'
  type: long
  inputBinding:
    prefix: --min_assembly_len
- id: include_shorts
  doc: 'if assembled contig is smaller than --min_assembly_len, contig will still
    be included in assembly; default: inferred'
  type: boolean
  inputBinding:
    prefix: --include_shorts
- id: damn_the_torpedos
  doc: Ignore certain errors, full speed ahead!
  type: boolean
  inputBinding:
    prefix: --damn_the_torpedos
- id: subtract
  doc: if --subtract reads already used in previousround of subassembly will not be
    included in subsequent rounds. This can lead to problems with multiple mapping
    and inflated coverage.
  type: boolean
  inputBinding:
    prefix: --subtract
- id: linear
  doc: 'if genome is known to not be circular and a region of interest (including
    flanking bits) extends past chromosome end, this extends the seqence past chromosome
    origin forward by --padding; default: False'
  type: boolean
  inputBinding:
    prefix: --linear
- id: min_flank_depth
  doc: "a subassembly will not be performed if this minimum depth is not achieved\
    \ on both the 3' and5' end of the pseudocontig. default: 0"
  type: long
  inputBinding:
    prefix: --min_flank_depth
- id: sub_assembler
  doc: assembler to use for subassembly scheme. SPAdes is used by default, but Skesa
    is a new addition that seems to work for subassembly and is faster
  type: string
  inputBinding:
    prefix: --subassembler
- id: ref_as_contig
  doc: "ignore: reference will not be used in subassembly. trusted: SPAdes will use\
    \ the seed sequences as a --trusted-contig; untrusted: SPAdes will treat as --untrusted-contig.\
    \ infer: if mapping percentage over 80%, 'trusted'; else 'untrusted'. See SPAdes\
    \ docs for details. default: infer"
  type: string
  inputBinding:
    prefix: --ref_as_contig
- id: additional_libs
  doc: 'include this string (usually additional library, but could be other SPAdes
    args) these libraries in final assembly in addition to the reads supplied as -F
    and -R. They must be supplied according to SPAdes arg naming scheme. Use at own
    risk.default: None'
  type: string
  inputBinding:
    prefix: --additional_libs
- id: clean_temps
  doc: 'if --clean_temps, mapping files will be removed once they are no no longer
    needed during the mapping iterations to save space; default: False'
  type: boolean
  inputBinding:
    prefix: --clean_temps
- id: enable_spades_error_core_ction
  doc: 'Default behaviour should be to skip read error correction: http://cab.spbu.ru/benchmarking-tools-for-
    de-novo-microbial-assembly/ . This re-enables itdefault: False'
  type: boolean
  inputBinding:
    prefix: --enable-spades-error-corection
- id: skip_control
  doc: 'if --skip_control, no de novo assembly will be done; default: False'
  type: boolean
  inputBinding:
    prefix: --skip_control
- id: iterations
  doc: 'if iterations>1, multiple seedings will occur after subassembly of seed regions;
    if setting --target_len, seedings will continue until --iterations are completed
    or --target_len is matched or exceeded; default: 3'
  type: string
  inputBinding:
    prefix: --iterations
- id: verbosity
  doc: 'Logger writes debug to file in output dir; this sets verbosity level sent
    to stderr. 1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical();
    default: 2'
  type: string
  inputBinding:
    prefix: --verbosity
- id: target_len
  doc: if set, iterations will continue until contigs reach this length, or max iterations
    (set by --iterations) have been completed. Set as fraction of original seed length
    by giving a decimal between 0 and 5, or set as an absolute number of base pairs
    by giving an integer greater than 50. Not used by default
  type: string
  inputBinding:
    prefix: --target_len
- id: serialize
  doc: 'if --serialize, runs seeding and assembly without multiprocessing. This is
    recommended for machines with less than 8GB RAM: False'
  type: boolean
  inputBinding:
    prefix: --serialize
- id: consensus
  doc: if --initial_consensus, generate a mpileup-based consesnsus instead of doing
    a proper spades subassembly
  type: boolean
  inputBinding:
    prefix: --consensus
- id: s_malt_scoring
  doc: 'if mapping with SMALT, submit custom smalt scoring via smalt -S scorespec
    option; default: match=1,subst=-4,gapopen=-4,gapext=-3'
  type: string
  inputBinding:
    prefix: --smalt_scoring
- id: mapper_args
  doc: "submit custom parameters to mapper. And by mapper, I mean bwa, cause we dont\
    \ support this option for SMALT, sorry. This requires knowledge of your chosen\
    \ mapper's optional arguments. Proceed with caution! default: -L 0,0 -U 0 -a"
  type: string
  inputBinding:
    prefix: --mapper_args
- id: spades_exe
  doc: 'Path to SPAdes executable; default: spades.py'
  type: string
  inputBinding:
    prefix: --spades_exe
- id: sam_tools_exe
  doc: 'Path to samtools executable; default: samtools'
  type: string
  inputBinding:
    prefix: --samtools_exe
- id: skes_a_exe
  doc: 'Path to skesa executable; default: skesa'
  type: string
  inputBinding:
    prefix: --skesa_exe
- id: s_malt_exe
  doc: 'Path to smalt executable; default: smalt'
  type: string
  inputBinding:
    prefix: --smalt_exe
- id: bwa_exe
  doc: 'Path to BWA executable; default: bwa'
  type: string
  inputBinding:
    prefix: --bwa_exe
- id: quast_exe
  doc: 'Path to quast executable; default: quast'
  type: string
  inputBinding:
    prefix: --quast_exe
- id: bcf_tools_exe
  doc: 'Path to bcftools executable; default: bcftools'
  type: string
  inputBinding:
    prefix: --bcftools_exe
- id: cores
  doc: 'cores to be used; default: None'
  type: string
  inputBinding:
    prefix: --cores
- id: threads
  doc: "if your cores are hyperthreaded, set number threads to the number of threads\
    \ per processer.If unsure, see 'cat /proc/cpuinfo' under 'cpu cores', or 'lscpu'\
    \ under 'Thread(s) per core'.: 1"
  type: string
  inputBinding:
    prefix: --threads
- id: memory
  doc: 'system memory available; default: 8'
  type: string
  inputBinding:
    prefix: --memory
- id: clustered_loci_txt
  doc: output from riboSelect
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- seed
