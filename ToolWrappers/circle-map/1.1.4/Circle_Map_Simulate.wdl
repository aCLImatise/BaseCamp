version 1.0

task CircleMapSimulate {
  input {
    Boolean? genome_fasta_file
    Boolean? _readnumber_number
    File? output_file_name
    Boolean? dir
    Boolean? _basename_fastq
    Boolean? _skipregion_regions
    Boolean? _readlength_read
    Boolean? _meaninsert_mean
    Boolean? _meancoveragemean_sequencing
    Boolean? _processes_number
    Boolean? variants
    Boolean? _substitution_fraction
    Boolean? _indels_fraction
    Boolean? _javamemory_java
    Boolean? error
    Boolean? _instrument_illumina
    Boolean? ir
    Boolean? ir_two
    Boolean? dr
    Boolean? dr_two
    String circle_map
    Int bam_two_bam
  }
  command <<<
    Circle_Map Simulate \
      ~{circle_map} \
      ~{bam_two_bam} \
      ~{if (genome_fasta_file) then "-g" else ""} \
      ~{if (_readnumber_number) then "-N" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if (dir) then "-dir" else ""} \
      ~{if (_basename_fastq) then "-b" else ""} \
      ~{if (_skipregion_regions) then "-s" else ""} \
      ~{if (_readlength_read) then "-r" else ""} \
      ~{if (_meaninsert_mean) then "-m" else ""} \
      ~{if (_meancoveragemean_sequencing) then "-c" else ""} \
      ~{if (_processes_number) then "-p" else ""} \
      ~{if (variants) then "--variants" else ""} \
      ~{if (_substitution_fraction) then "-S" else ""} \
      ~{if (_indels_fraction) then "-I" else ""} \
      ~{if (_javamemory_java) then "-J" else ""} \
      ~{if (error) then "--error" else ""} \
      ~{if (_instrument_illumina) then "-i" else ""} \
      ~{if (ir) then "-ir" else ""} \
      ~{if (ir_two) then "-ir2" else ""} \
      ~{if (dr) then "-dr" else ""} \
      ~{if (dr_two) then "-dr2" else ""}
  >>>
  parameter_meta {
    genome_fasta_file: "Genome fasta file (Needs to be indexed with samtools\\nfaidx)"
    _readnumber_number: ", --read-number    Number of reads to simulate"
    output_file_name: "Output file name"
    dir: ", --directory    Working directory, default is the working directory"
    _basename_fastq: ", --base-name      Fastq output basename"
    _skipregion_regions: ", --skip-region    Regions of the genome to skip the simulation. The\\ninput needs to be in bed format"
    _readlength_read: ", --read-length    Read length to simulate"
    _meaninsert_mean: ", --mean-insert    Mean of the insert size distribution"
    _meancoveragemean_sequencing: ", --mean-coverage\\nMean sequencing coverage within the eccDNA coordinates"
    _processes_number: ", --processes      Number of parallel processes to use"
    variants: "If set to true, introduce mutations in the reference\\ngenome prior to simulatingreads."
    _substitution_fraction: ", --substitution   Fraction of base substitutions to introduce on the\\ngenome. Default: 0.0001"
    _indels_fraction: ", --Indels         Fraction of indels to introduce on the genome.\\nDefault: 0.001"
    _javamemory_java: ", --java_memory    Java memory allocation, required for mutating the\\ngenome. Default: -Xmx16g"
    error: "Introduce sequencing errors ( Uses ART on the\\nbackground)"
    _instrument_illumina: ", --instrument     Illumina sequecing instrument to simulate reads from\\n(Default HiSeq 2500)"
    ir: ", --insRate       the first-read insertion rate (default: 0.00009).\\nRequires -e"
    ir_two: ", --insRate2     the second-read insertion rate (default: 0.00015).\\nRequires -e"
    dr: ", --delRate       the first-read deletion rate (default: 0.00011).\\nRequires -e"
    dr_two: ", --delRate2     the second-read deletion rate (default: 0.00023).\\nRequires -e\\n"
    circle_map: ""
    bam_two_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}