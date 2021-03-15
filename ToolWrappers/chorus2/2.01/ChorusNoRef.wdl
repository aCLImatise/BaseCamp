version 1.0

task ChorusNoRef {
  input {
    File? jellyfish
    File? bwa
    File? bcf_tools
    File? sam_tools
    File? genome
    Directory? save
    String? tmp
    Int? probe
    Int? reads_one
    Int? reads_two
    Int? names
    Int? threads
    Int? mink_mer
    Int? length
    Int? min_depth
  }
  command <<<
    ChorusNoRef \
      ~{if defined(jellyfish) then ("--jellyfish " +  '"' + jellyfish + '"') else ""} \
      ~{if defined(bwa) then ("--bwa " +  '"' + bwa + '"') else ""} \
      ~{if defined(bcf_tools) then ("--bcftools " +  '"' + bcf_tools + '"') else ""} \
      ~{if defined(sam_tools) then ("--samtools " +  '"' + sam_tools + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(save) then ("--save " +  '"' + save + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(probe) then ("--probe " +  '"' + probe + '"') else ""} \
      ~{if defined(reads_one) then ("--reads1 " +  '"' + reads_one + '"') else ""} \
      ~{if defined(reads_two) then ("--reads2 " +  '"' + reads_two + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(mink_mer) then ("--minkmer " +  '"' + mink_mer + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(min_depth) then ("--mindepth " +  '"' + min_depth + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chorus2:2.01--py37hf01694f_0"
  }
  parameter_meta {
    jellyfish: "The path where Jellyfish software installed"
    bwa: "The path where BWA software installed"
    bcf_tools: "The path where bcftools software installed"
    sam_tools: "The path where samtools software installed"
    genome: "Fasta format genome file, should include all sequences\\nfrom genome"
    save: "The output folder for saving results"
    tmp: "The temporary fold for processing"
    probe: "Original probe design by Chorus2 and filtered by\\nChorusNGSfilter"
    reads_one: "read1 of species, example: For one Species only:\\nspecies_R1.fq; for more than one species:\\nspecies1_R1.fq,species2_R1.fq"
    reads_two: "read1 of species, example: For one Species only:\\nspecies_R2.fq; for more than one species:\\nspecies1_R2.fq,species2_R2.fq"
    names: "species name(s), the order must same as r1, r2"
    threads: "Number of threads or CPUs to use. (Default: 1)"
    mink_mer: "Probe min count for illumina reads"
    length: "The probe length. (Default: 45)"
    min_depth: "Minimum depth covered by illumina sequences. (Default:\\n3)"
  }
  output {
    File out_stdout = stdout()
    Directory out_save = "${in_save}"
  }
}