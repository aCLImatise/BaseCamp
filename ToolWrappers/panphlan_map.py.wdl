version 1.0

task PanphlanMappy {
  input {
    String? metagenomic_sample_map
    File? indexes
    File? pan_genome
    File? path_output_file
    Int? bt_two
    File? out_bam
    Int? nproc
    Int? min_read_length
    Int? th_mismatches
    Int? sam_memory
    Boolean? fast_a
    Boolean? verbose
  }
  command <<<
    panphlan_map_py \
      ~{if defined(metagenomic_sample_map) then ("--input " +  '"' + metagenomic_sample_map + '"') else ""} \
      ~{if defined(indexes) then ("--indexes " +  '"' + indexes + '"') else ""} \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(bt_two) then ("--bt2 " +  '"' + bt_two + '"') else ""} \
      ~{if defined(out_bam) then ("--out_bam " +  '"' + out_bam + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(min_read_length) then ("--min_read_length " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(th_mismatches) then ("--th_mismatches " +  '"' + th_mismatches + '"') else ""} \
      ~{if defined(sam_memory) then ("--sam_memory " +  '"' + sam_memory + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    metagenomic_sample_map: "Metagenomic sample to map"
    indexes: "Bowtie2 indexes path and file prefix"
    pan_genome: "Path to pangenome tsv file exported from ChocoPhlAn"
    path_output_file: "Path to output file"
    bt_two: "Additional bowtie2 mapping options, separated by\\nslash: /-D/20/-R/3/, default: -bt2 /--very-sensitive/"
    out_bam: "Get BAM output file"
    nproc: "Maximum number of processors to use. Default is 12 or\\na lower number of available processors."
    min_read_length: "Minimum read length, default 70"
    th_mismatches: "Number of mismatches to filter (bam)"
    sam_memory: "Maximum amount of memory for Samtools (in Gb). Default\\n4"
    fast_a: "Read are fasta format. By default considered as fastq"
    verbose: "Show progress information"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
    File out_out_bam = "${in_out_bam}"
  }
}