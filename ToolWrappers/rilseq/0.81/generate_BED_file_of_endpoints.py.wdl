version 1.0

task GenerateBEDFileOfEndpointspy {
  input {
    Boolean? reverse
    File? summary
    String? gene_name
    Boolean? rand_score
    Int? pos_first
    Int? pos_second
    Int? rev_first
    Int? rev_second
    File? bc_chr_list
    String genome
    String list_reads
    String track_name
    String track_desc
    String bam_files
    String reads_dot
  }
  command <<<
    generate_BED_file_of_endpoints_py \
      ~{genome} \
      ~{list_reads} \
      ~{track_name} \
      ~{track_desc} \
      ~{bam_files} \
      ~{reads_dot} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(gene_name) then ("--gene_name " +  '"' + gene_name + '"') else ""} \
      ~{if (rand_score) then "--rand_score" else ""} \
      ~{if defined(pos_first) then ("--pos_first " +  '"' + pos_first + '"') else ""} \
      ~{if defined(pos_second) then ("--pos_second " +  '"' + pos_second + '"') else ""} \
      ~{if defined(rev_first) then ("--rev_first " +  '"' + rev_first + '"') else ""} \
      ~{if defined(rev_second) then ("--rev_second " +  '"' + rev_second + '"') else ""} \
      ~{if defined(bc_chr_list) then ("--BC_chrlist " +  '"' + bc_chr_list + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rilseq:0.81--py_0"
  }
  parameter_meta {
    reverse: "The original bam file is the reverse complement of the\\nRNA. (default: False)"
    summary: "Print only reads that are found to be significant in\\nthis summary file. (default: None)"
    gene_name: "Print reads involve only this gene (EcoCyc ID),\\napplies only with -s (default: None)"
    rand_score: "Set a random score (0-1000) for each read, this will\\nallow to present some of the reads in UCSC genome\\nbrowser. (default: False)"
    pos_first: "Color of first part, positive strand. (default:\\n255,0,0)"
    pos_second: "Color of second part, positive strand. (default:\\n51,102,255)"
    rev_first: "Color of first part, reverse strand. (default:\\n255,0,0)"
    rev_second: "Color of second part, reverse strand. (default:\\n51,102,255)"
    bc_chr_list: "A comma separated dictionary of chromosome names from\\nthe BioCyc names to the bam file names. The names in\\nthe bam file should be the same as the UCSC genome\\nbrowser (they will be printed). (default:\\nCOLI-K12,chr)\\n"
    genome: "genome fasta file."
    list_reads: "File with list of reads and their fused positions."
    track_name: "Name of track"
    track_desc: "Description of the track"
    bam_files: "The original bam file (or several files) with the full"
    reads_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}