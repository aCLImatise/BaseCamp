version 1.0

task Chorus2 {
  input {
    File? jellyfish
    File? bwa
    File? genome
    File? fasta_format_input
    Directory? save
    Int? primer
    Int? threads
    Int? length
    Int? homology
    Int? dtm
    Int? skip_dtm
    Int? step
    String? docker
    Int? ploidy
  }
  command <<<
    Chorus2 \
      ~{if defined(jellyfish) then ("--jellyfish " +  '"' + jellyfish + '"') else ""} \
      ~{if defined(bwa) then ("--bwa " +  '"' + bwa + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(fasta_format_input) then ("--input " +  '"' + fasta_format_input + '"') else ""} \
      ~{if defined(save) then ("--save " +  '"' + save + '"') else ""} \
      ~{if defined(primer) then ("--primer " +  '"' + primer + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(homology) then ("--homology " +  '"' + homology + '"') else ""} \
      ~{if defined(dtm) then ("--dtm " +  '"' + dtm + '"') else ""} \
      ~{if defined(skip_dtm) then ("--skipdtm " +  '"' + skip_dtm + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(docker) then ("--docker " +  '"' + docker + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chorus2:2.01--py37hf01694f_0"
  }
  parameter_meta {
    jellyfish: "The path where Jellyfish software installed"
    bwa: "The path where BWA software installed"
    genome: "Fasta format genome file, should include all sequences\\nfrom genome"
    fasta_format_input: "Fasta format input file, can be whole genome, a\\nchromosome or one region from genome"
    save: "The output folder for saving results"
    primer: "A specific 5' labeled R primer for PCR reaction. For\\nexample: CGTGGTCGCGTCTCA. (Default is none)"
    threads: "Number of threads or CPUs to use. (Default: 1)"
    length: "The probe length. (Default: 45)"
    homology: "The maximum homology(%) between target sequence and\\nprobe, range from 50 to 100. (Default: 75)"
    dtm: "The minimum value of dTm (hybrid Tm - hairpin Tm),\\nrange from 0 to 37. (Default: 10)"
    skip_dtm: "skip calculate dtm, for oligo longer than 50."
    step: "The step length for k-mer searching in a sliding\\nwindow, step length>=1. (Default: 5)"
    docker: "Only used in Docker version of Chorus"
    ploidy: "The ploidy of the given genome (test version).\\n(Default: 2)"
  }
  output {
    File out_stdout = stdout()
    Directory out_save = "${in_save}"
  }
}