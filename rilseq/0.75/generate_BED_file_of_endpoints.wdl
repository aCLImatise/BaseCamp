version 1.0

task GenerateBEDFileOfEndpoints.py {
  input {
    Boolean? reverse
    String? summary
    String? gene_name
    Boolean? rand_score
    String? pos_first
    String? pos_second
    String? rev_first
    String? rev_second
    String? bc_chr_list
    String genome
    String list_reads
    String track_name
    String track_desc
    String bam_files
  }
  command <<<
    generate_BED_file_of_endpoints.py \
      ~{genome} \
      ~{list_reads} \
      ~{track_name} \
      ~{track_desc} \
      ~{bam_files} \
      ~{true="--reverse" false="" reverse} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(gene_name) then ("--gene_name " +  '"' + gene_name + '"') else ""} \
      ~{true="--rand_score" false="" rand_score} \
      ~{if defined(pos_first) then ("--pos_first " +  '"' + pos_first + '"') else ""} \
      ~{if defined(pos_second) then ("--pos_second " +  '"' + pos_second + '"') else ""} \
      ~{if defined(rev_first) then ("--rev_first " +  '"' + rev_first + '"') else ""} \
      ~{if defined(rev_second) then ("--rev_second " +  '"' + rev_second + '"') else ""} \
      ~{if defined(bc_chr_list) then ("--BC_chrlist " +  '"' + bc_chr_list + '"') else ""}
  >>>
  parameter_meta {
    reverse: "The original bam file is the reverse complement of the RNA. (default: False)"
    summary: "Print only reads that are found to be significant in this summary file. (default: None)"
    gene_name: "Print reads involve only this gene (EcoCyc ID), applies only with -s (default: None)"
    rand_score: "Set a random score (0-1000) for each read, this will allow to present some of the reads in UCSC genome browser. (default: False)"
    pos_first: "Color of first part, positive strand. (default: 255,0,0)"
    pos_second: "Color of second part, positive strand. (default: 51,102,255)"
    rev_first: "Color of first part, reverse strand. (default: 255,0,0)"
    rev_second: "Color of second part, reverse strand. (default: 51,102,255)"
    bc_chr_list: "A comma separated dictionary of chromosome names from the BioCyc names to the bam file names. The names in the bam file should be the same as the UCSC genome browser (they will be printed). (default: COLI-K12,chr)"
    genome: "genome fasta file."
    list_reads: "File with list of reads and their fused positions."
    track_name: "Name of track"
    track_desc: "Description of the track"
    bam_files: "The original bam file (or several files) with the full reads."
  }
}