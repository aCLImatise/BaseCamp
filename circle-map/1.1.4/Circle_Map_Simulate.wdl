version 1.0

task CircleMapSimulate {
  input {
    Boolean? genome_fasta_file
    Boolean? _readnumber_number
    String? output_file_name
    Boolean? dir
    Boolean? _basename_fastq
    Boolean? _skipregion_regions
    Boolean? _readlength_read
    Boolean? _meaninsert_mean
    Boolean? _meancoverage_mean
    Boolean? _processes_number
    Boolean? variants
    Boolean? _substitution_fraction
    Boolean? _indels_fraction
    Boolean? _javamemory_java
    Boolean? error
    Boolean? _instrument_sequecing
    Boolean? ir
    Boolean? ir_two
    Boolean? dr
    Boolean? dr_two
    String circle_map
    String bam_two_bam
  }
  command <<<
    Circle-Map Simulate \
      ~{circle_map} \
      ~{bam_two_bam} \
      ~{true="-g" false="" genome_fasta_file} \
      ~{true="-N" false="" _readnumber_number} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{true="-dir" false="" dir} \
      ~{true="-b" false="" _basename_fastq} \
      ~{true="-s" false="" _skipregion_regions} \
      ~{true="-r" false="" _readlength_read} \
      ~{true="-m" false="" _meaninsert_mean} \
      ~{true="-c" false="" _meancoverage_mean} \
      ~{true="-p" false="" _processes_number} \
      ~{true="--variants" false="" variants} \
      ~{true="-S" false="" _substitution_fraction} \
      ~{true="-I" false="" _indels_fraction} \
      ~{true="-J" false="" _javamemory_java} \
      ~{true="--error" false="" error} \
      ~{true="-i" false="" _instrument_sequecing} \
      ~{true="-ir" false="" ir} \
      ~{true="-ir2" false="" ir_two} \
      ~{true="-dr" false="" dr} \
      ~{true="-dr2" false="" dr_two}
  >>>
  parameter_meta {
    genome_fasta_file: "Genome fasta file (Needs to be indexed with samtools faidx)"
    _readnumber_number: ", --read-number    Number of reads to simulate"
    output_file_name: "Output file name"
    dir: ", --directory    Working directory, default is the working directory"
    _basename_fastq: ", --base-name      Fastq output basename"
    _skipregion_regions: ", --skip-region    Regions of the genome to skip the simulation. The input needs to be in bed format"
    _readlength_read: ", --read-length    Read length to simulate"
    _meaninsert_mean: ", --mean-insert    Mean of the insert size distribution"
    _meancoverage_mean: ", --mean-coverage  Mean sequencing coverage within the eccDNA coordinates"
    _processes_number: ", --processes      Number of parallel processes to use"
    variants: "If set to true, introduce mutations in the reference genome prior to simulatingreads."
    _substitution_fraction: ", --substitution   Fraction of base substitutions to introduce on the genome. Default: 0.0001"
    _indels_fraction: ", --Indels         Fraction of indels to introduce on the genome. Default: 0.001"
    _javamemory_java: ", --java_memory    Java memory allocation, required for mutating the genome. Default: -Xmx16g"
    error: "Introduce sequencing errors ( Uses ART on the background)"
    _instrument_sequecing: ", --instrument     Illumina sequecing instrument to simulate reads from (Default HiSeq 2500)"
    ir: ", --insRate       the first-read insertion rate (default: 0.00009). Requires -e"
    ir_two: ", --insRate2     the second-read insertion rate (default: 0.00015). Requires -e"
    dr: ", --delRate       the first-read deletion rate (default: 0.00011). Requires -e"
    dr_two: ", --delRate2     the second-read deletion rate (default: 0.00023). Requires -e"
    circle_map: ""
    bam_two_bam: ""
  }
}