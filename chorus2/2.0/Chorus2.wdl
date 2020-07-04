version 1.0

task Chorus2 {
  input {
    String? jellyfish
    String? bwa
    String? genome
    String? fasta_format_input
    String? save
    String? primer
    String? threads
    Int? length
    String? homology
    String? dtm
    String? step
    String? docker
    String? ploidy
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
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(docker) then ("--docker " +  '"' + docker + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""}
  >>>
  parameter_meta {
    jellyfish: "The path where Jellyfish software installed"
    bwa: "The path where BWA software installed"
    genome: "Fasta format genome file, should include all sequences from genome"
    fasta_format_input: "Fasta format input file, can be whole genome, a chromosome or one region from genome"
    save: "The output folder for saving results"
    primer: "A specific 5' labeled R primer for PCR reaction. For example: CGTGGTCGCGTCTCA. (Default is none)"
    threads: "Number of threads or CPUs to use. (Default: 1)"
    length: "The probe length. (Default: 45)"
    homology: "The maximum homology(%) between target sequence and probe, range from 50 to 100. (Default: 75)"
    dtm: "The minimum value of dTm (hybrid Tm - hairpin Tm), range from 0 to 37. (Default: 10)"
    step: "The step length for k-mer searching in a sliding window, step length>=1. (Default: 5)"
    docker: "Only used in Docker version of Chorus"
    ploidy: "The ploidy of the given genome (test version). (Default: 2)"
  }
}