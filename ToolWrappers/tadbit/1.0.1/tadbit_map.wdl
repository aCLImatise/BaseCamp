version 1.0

task TadbitMap {
  input {
    Boolean? skip_mapping
    File? workdir
    File? fast_q
    File? fast_q_two
    File? index
    Array[File] genome
    Int? read
    Array[String] renz
    Array[String] chr_name
    File? tmp
    File? tmp_db
    Boolean? nox
    Boolean? skip
    Boolean? keep_tmp
    Boolean? iterative
    File? fast_fragment
    Array[String] windows
    Int? cpus
    Int? mapper
    File? mapper_binary
    Array[String] mapper_param
    String? species
    Array[String] descr
  }
  command <<<
    tadbit map \
      ~{if (skip_mapping) then "--skip_mapping" else ""} \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(fast_q_two) then ("--fastq2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(read) then ("--read " +  '"' + read + '"') else ""} \
      ~{if defined(renz) then ("--renz " +  '"' + renz + '"') else ""} \
      ~{if defined(chr_name) then ("--chr_name " +  '"' + chr_name + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(tmp_db) then ("--tmpdb " +  '"' + tmp_db + '"') else ""} \
      ~{if (nox) then "--noX" else ""} \
      ~{if (skip) then "--skip" else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""} \
      ~{if (iterative) then "--iterative" else ""} \
      ~{if (fast_fragment) then "--fast_fragment" else ""} \
      ~{if defined(windows) then ("--windows " +  '"' + windows + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(mapper) then ("--mapper " +  '"' + mapper + '"') else ""} \
      ~{if defined(mapper_binary) then ("--mapper_binary " +  '"' + mapper_binary + '"') else ""} \
      ~{if defined(mapper_param) then ("--mapper_param " +  '"' + mapper_param + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(descr) then ("--descr " +  '"' + descr + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tadbit:1.0.1--py38h6ed170a_0"
  }
  parameter_meta {
    skip_mapping: "generate a Hi-C specific quality plot from FASTQ and exits"
    workdir: "path to an output folder."
    fast_q: "path to a FASTQ files (can be compressed files)"
    fast_q_two: "(beta) path to a FASTQ file of read 2 (can be compressed files).\\nNeeded for fast_fragment"
    index: "paths to file(s) with indexed FASTA files of the reference genome."
    genome: "paths to file(s) with FASTA files of the reference genome. Needed\\nfor fast_fragment mapping. If many, files will be concatenated.\\nI.e.: --genome chr_1.fa chr_2.fa In this last case, order is\\nimportant or the rest of the analysis. Note: it can also be the path\\nto a previously parsed genome in pickle format."
    read: "read number"
    renz: "restriction enzyme name(s). Use \\\"--renz CHECK\\\" to search for most\\nprobable and exit; and use \\\"--renz NONE\\\" to avoid using RE site\\ninformation."
    chr_name: "[fasta header] chromosome name(s). Used in the same order as data."
    tmp: "path to a temporary directory (default next to \\\"workdir\\\" directory)"
    tmp_db: "if provided uses this directory to manipulate the database"
    nox: "no display server (X screen)"
    skip: "[DEBUG] in case already mapped."
    keep_tmp: "[DEBUG] keep temporary files."
    iterative: "default mapping strategy is fragment based use this flag for\\niterative mapping"
    fast_fragment: "(beta) use fast fragment mapping. Both fastq files are mapped using\\nfragment based mapping in GEM v3. The output file is an intersected\\nread file than can be used directly in tadbit filter (no tadbit\\nparse needed). Access to samtools is needed for fast_fragment to\\nwork. --fastq2 and --genome needs to be specified and --read value\\nshould be 0."
    windows: "defines windows to be used to trim the input FASTQ reads, for\\nexample an iterative mapping can be defined as: \\\"--windows 1:20 1:25\\n1:30 1:35 1:40 1:45 1:50\\\". But this parameter can also be used for\\nfragment based mapping if for example pair-end reads are both in the\\nsame FASTQ, for example: \\\"--windows 1:50\\\" (if the length of the\\nreads is 100). Note: that the numbers are both inclusive."
    cpus: "[8] Maximum number of CPU cores available in the execution host. If\\nhigher than 1, tasks with multi-threading capabilities will enabled\\n(if 0 all available) cores will be used"
    mapper: "[gem] mapper used, options are gem, bowtie2 or hisat2"
    mapper_binary: "[None] path to mapper binary"
    mapper_param: "any parameter that could be passed to the GEM, BOWTIE2 or HISAT2\\nmapper. e.g. if we want to set the proportion of mismatches to 0.05\\nand the maximum indel length to 10, (in GEM v2 it would be: -e 0.05\\n--max-big-indel-length 10), here we could write: \\\"--mapper_param\\ne:0.05 max-big-indel-length:10\\\". For BOWTIE2, GEM3 and HISAT2 you\\ncan also pass directly the parameters enclosed between quotes like:\\n--mapper_param \\\"-e 0.05 --alignment-local-min-score 15\\\" IMPORTANT:\\nsome options are incompatible with 3C-derived experiments."
    species: "species name"
    descr: "extra descriptive fields each filed separated by coma, and inside\\neach, name and value separated by column:\\n--descr=cell:lymphoblast,flowcell:C68AEACXX,index:24nf\\n"
  }
  output {
    File out_stdout = stdout()
    File out_workdir = "${in_workdir}"
    File out_fast_fragment = "${in_fast_fragment}"
  }
}