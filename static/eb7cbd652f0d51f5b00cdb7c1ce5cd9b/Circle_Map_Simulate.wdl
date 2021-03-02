version 1.0

task CircleMapSimulate {
  input {
    Boolean? genome_fasta_file
    Boolean? read_number
    File? output_file_name
    Boolean? directory
    Boolean? base_name
    Boolean? skip_region
    Boolean? read_length
    Boolean? mean_insert
    Boolean? mean_coverage
    Boolean? processes
    Boolean? variants
    Boolean? substitution
    Boolean? indels
    Boolean? java_memory
    Boolean? error
    Boolean? instrument
    Boolean? ins_rate
    Boolean? ins_rate_two
    Boolean? del_rate
    Boolean? del_rate_two
    String circle_map
    Int bam_two_bam
  }
  command <<<
    Circle_Map Simulate \
      ~{circle_map} \
      ~{bam_two_bam} \
      ~{if (genome_fasta_file) then "-g" else ""} \
      ~{if (read_number) then "--read-number" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if (directory) then "--directory" else ""} \
      ~{if (base_name) then "--base-name" else ""} \
      ~{if (skip_region) then "--skip-region" else ""} \
      ~{if (read_length) then "--read-length" else ""} \
      ~{if (mean_insert) then "--mean-insert" else ""} \
      ~{if (mean_coverage) then "--mean-coverage" else ""} \
      ~{if (processes) then "--processes" else ""} \
      ~{if (variants) then "--variants" else ""} \
      ~{if (substitution) then "--substitution" else ""} \
      ~{if (indels) then "--Indels" else ""} \
      ~{if (java_memory) then "--java_memory" else ""} \
      ~{if (error) then "--error" else ""} \
      ~{if (instrument) then "--instrument" else ""} \
      ~{if (ins_rate) then "--insRate" else ""} \
      ~{if (ins_rate_two) then "--insRate2" else ""} \
      ~{if (del_rate) then "--delRate" else ""} \
      ~{if (del_rate_two) then "--delRate2" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome_fasta_file: "Genome fasta file (Needs to be indexed with samtools\\nfaidx)"
    read_number: "Number of reads to simulate"
    output_file_name: "Output file name"
    directory: "Working directory, default is the working directory"
    base_name: "Fastq output basename"
    skip_region: "Regions of the genome to skip the simulation. The\\ninput needs to be in bed format"
    read_length: "Read length to simulate"
    mean_insert: "Mean of the insert size distribution"
    mean_coverage: "Mean sequencing coverage within the eccDNA coordinates"
    processes: "Number of parallel processes to use"
    variants: "If set to true, introduce mutations in the reference\\ngenome prior to simulatingreads."
    substitution: "Fraction of base substitutions to introduce on the\\ngenome. Default: 0.0001"
    indels: "Fraction of indels to introduce on the genome.\\nDefault: 0.001"
    java_memory: "Java memory allocation, required for mutating the\\ngenome. Default: -Xmx16g"
    error: "Introduce sequencing errors ( Uses ART on the\\nbackground)"
    instrument: "Illumina sequecing instrument to simulate reads from\\n(Default HiSeq 2500)"
    ins_rate: "the first-read insertion rate (default: 0.00009).\\nRequires -e"
    ins_rate_two: "the second-read insertion rate (default: 0.00015).\\nRequires -e"
    del_rate: "the first-read deletion rate (default: 0.00011).\\nRequires -e"
    del_rate_two: "the second-read deletion rate (default: 0.00023).\\nRequires -e\\n"
    circle_map: ""
    bam_two_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}