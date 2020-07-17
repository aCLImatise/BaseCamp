version 1.0

task MapChimericFragments.py {
  input {
    Boolean? reverse_complement
    String? transcripts
    String? distance
    String? dust_thr
    String? dir_out
    String? all_reads
    Boolean? add_all_reads
    Boolean? keep_circular
    Int? length
    Int? max_mismatches
    String? allowed_mismatches
    Boolean? skip_mapping
    Int? maxg
    String? feature
    String? identifier
    String? bwa_exec
    String? sam_tools_cmd
    String? params_aln
    String? sam_se_params
    String genome_fast_a
    String bam_files
  }
  command <<<
    map_chimeric_fragments.py \
      ~{genome_fast_a} \
      ~{bam_files} \
      ~{true="--reverse_complement" false="" reverse_complement} \
      ~{if defined(transcripts) then ("--transcripts " +  '"' + transcripts + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(dust_thr) then ("--dust_thr " +  '"' + dust_thr + '"') else ""} \
      ~{if defined(dir_out) then ("--dirout " +  '"' + dir_out + '"') else ""} \
      ~{if defined(all_reads) then ("--all_reads " +  '"' + all_reads + '"') else ""} \
      ~{true="--add_all_reads" false="" add_all_reads} \
      ~{true="--keep_circular" false="" keep_circular} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(max_mismatches) then ("--max_mismatches " +  '"' + max_mismatches + '"') else ""} \
      ~{if defined(allowed_mismatches) then ("--allowed_mismatches " +  '"' + allowed_mismatches + '"') else ""} \
      ~{true="--skip_mapping" false="" skip_mapping} \
      ~{if defined(maxg) then ("--maxG " +  '"' + maxg + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(identifier) then ("--identifier " +  '"' + identifier + '"') else ""} \
      ~{if defined(bwa_exec) then ("--bwa_exec " +  '"' + bwa_exec + '"') else ""} \
      ~{if defined(sam_tools_cmd) then ("--samtools_cmd " +  '"' + sam_tools_cmd + '"') else ""} \
      ~{if defined(params_aln) then ("--params_aln " +  '"' + params_aln + '"') else ""} \
      ~{if defined(sam_se_params) then ("--samse_params " +  '"' + sam_se_params + '"') else ""}
  >>>
  parameter_meta {
    reverse_complement: "Treat the reads as reverse complement. This means that the first read is actually the 3' end of the fragment. Use this when using Jonathan Livny's protocol for library construction (default: False)"
    transcripts: "A gff file of transcripts. If given, screen reads that might reside from the same transcript. Very useful for screening ribosomal RNAs. Otherwise use only the size limit. (default: None)"
    distance: "Maximal distance between concordant reads. If they are generated from the same strand but larger than this distance they will be considered as chimeric. (default: 1000)"
    dust_thr: "Threshold for dust filter. If 0 skip. (default: 10)"
    dir_out: "Output directory, default is this directory. (default: ./remapped-data/)"
    all_reads: "Map all reads in the BAM file, write all the fragments that are not chimeric to the file specified here e.g. -a single_fragments_mapping.txt. By default these reads will be written to the standard output. (default: None)"
    add_all_reads: "By default map all reads in the BAM file, write all the fragments, either chimeric ro single to the output file (stdout). If this option is selected don't wirte the single reads. (default: True)"
    keep_circular: "Remove reads that are probably a result of circular RNAs by default. If the reads are close but in opposite order they will be removed unless this argument is set. (default: False)"
    length: "Length of sequence to map. Take the ends of the fragment and map each to the genome. The length of the region will be this length. (default: 25)"
    max_mismatches: "Find alignment allowing this number of mismatches. If there are more than one match with this number of mismatches the read will be treated as if it might match all of them and if there is one scenario in which the two ends are concordant it will be removed. (default: 3)"
    allowed_mismatches: "This number of mismatches is allowed between the a match and the genome. If there are mapped reads with less than --max_mismatches mismatches but more than this number the read will be ignored. (default: 1)"
    skip_mapping: "Skip the mapping step, use previously mapped files. (default: False)"
    maxg: "If a read has more than this fraction of Gs remove this readfrom the screen. This is due to nextseq technology which puts G where there is no signal, the poly G might just be noise. When using other sequencing technologies set to 1. (default: 0.8)"
    feature: "Name of features to count on the GTF file (column 2). (default: exon)"
    identifier: "Name of identifier to print (in column 8 of the GTF file). (default: gene_id)"
    bwa_exec: "bwa command (default: bwa)"
    sam_tools_cmd: "Samtools executable. (default: samtools)"
    params_aln: "Additional parameters for aln function of bwa. (default: -t 8 -N -M 0)"
    sam_se_params: "Additional parameters for samse function of bwa. (default: -n 1000)"
    genome_fast_a: "Name of genome fasta file. The file must be indexed usingbwa index command prior to this run."
    bam_files: "One or more bam files."
  }
}