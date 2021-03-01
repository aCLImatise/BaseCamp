version 1.0

task MapChimericFragmentspy {
  input {
    Boolean? reverse_complement
    Int? transcripts
    Int? distance
    Int? dust_thr
    Directory? dir_out
    File? all_reads
    File? add_all_reads
    Boolean? keep_circular
    Int? length
    Int? max_mismatches
    Int? allowed_mismatches
    Boolean? skip_mapping
    Float? maxg
    File? feature
    File? identifier
    String? bwa_exec
    String? sam_tools_cmd
    Int? params_aln
    Int? sam_se_params
    String genome_fast_a
    String bam_files
  }
  command <<<
    map_chimeric_fragments_py \
      ~{genome_fast_a} \
      ~{bam_files} \
      ~{if (reverse_complement) then "--reverse_complement" else ""} \
      ~{if defined(transcripts) then ("--transcripts " +  '"' + transcripts + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(dust_thr) then ("--dust_thr " +  '"' + dust_thr + '"') else ""} \
      ~{if defined(dir_out) then ("--dirout " +  '"' + dir_out + '"') else ""} \
      ~{if defined(all_reads) then ("--all_reads " +  '"' + all_reads + '"') else ""} \
      ~{if (add_all_reads) then "--add_all_reads" else ""} \
      ~{if (keep_circular) then "--keep_circular" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(max_mismatches) then ("--max_mismatches " +  '"' + max_mismatches + '"') else ""} \
      ~{if defined(allowed_mismatches) then ("--allowed_mismatches " +  '"' + allowed_mismatches + '"') else ""} \
      ~{if (skip_mapping) then "--skip_mapping" else ""} \
      ~{if defined(maxg) then ("--maxG " +  '"' + maxg + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(identifier) then ("--identifier " +  '"' + identifier + '"') else ""} \
      ~{if defined(bwa_exec) then ("--bwa_exec " +  '"' + bwa_exec + '"') else ""} \
      ~{if defined(sam_tools_cmd) then ("--samtools_cmd " +  '"' + sam_tools_cmd + '"') else ""} \
      ~{if defined(params_aln) then ("--params_aln " +  '"' + params_aln + '"') else ""} \
      ~{if defined(sam_se_params) then ("--samse_params " +  '"' + sam_se_params + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rilseq:0.81--py_0"
  }
  parameter_meta {
    reverse_complement: "Treat the reads as reverse complement. This means that\\nthe first read is actually the 3' end of the fragment.\\nUse this when using Jonathan Livny's protocol for\\nlibrary construction (default: False)"
    transcripts: "A gff file of transcripts. If given, screen reads that\\nmight reside from the same transcript. Very useful for\\nscreening ribosomal RNAs. Otherwise use only the size\\nlimit. (default: None)"
    distance: "Maximal distance between concordant reads. If they are\\ngenerated from the same strand but larger than this\\ndistance they will be considered as chimeric.\\n(default: 1000)"
    dust_thr: "Threshold for dust filter. If 0 skip. (default: 10)"
    dir_out: "Output directory, default is this directory. (default:\\n./remapped-data/)"
    all_reads: "Map all reads in the BAM file, write all the fragments\\nthat are not chimeric to the file specified here e.g.\\n-a single_fragments_mapping.txt. By default these\\nreads will be written to the standard output.\\n(default: None)"
    add_all_reads: "By default map all reads in the BAM file, write all\\nthe fragments, either chimeric ro single to the output\\nfile (stdout). If this option is selected don't wirte\\nthe single reads. (default: True)"
    keep_circular: "Remove reads that are probably a result of circular\\nRNAs by default. If the reads are close but in\\nopposite order they will be removed unless this\\nargument is set. (default: False)"
    length: "Length of sequence to map. Take the ends of the\\nfragment and map each to the genome. The length of the\\nregion will be this length. (default: 25)"
    max_mismatches: "Find alignment allowing this number of mismatches. If\\nthere are more than one match with this number of\\nmismatches the read will be treated as if it might\\nmatch all of them and if there is one scenario in\\nwhich the two ends are concordant it will be removed.\\n(default: 3)"
    allowed_mismatches: "This number of mismatches is allowed between the a\\nmatch and the genome. If there are mapped reads with\\nless than --max_mismatches mismatches but more than\\nthis number the read will be ignored. (default: 1)"
    skip_mapping: "Skip the mapping step, use previously mapped files.\\n(default: False)"
    maxg: "If a read has more than this fraction of Gs remove\\nthis readfrom the screen. This is due to nextseq\\ntechnology which puts G where there is no signal, the\\npoly G might just be noise. When using other\\nsequencing technologies set to 1. (default: 0.8)"
    feature: "Name of features to count on the GTF file (column 2).\\n(default: exon)"
    identifier: "Name of identifier to print (in column 8 of the GTF\\nfile). (default: gene_id)"
    bwa_exec: "bwa command (default: bwa)"
    sam_tools_cmd: "Samtools executable. (default: samtools)"
    params_aln: "Additional parameters for aln function of bwa.\\n(default: -t 8 -N -M 0)"
    sam_se_params: "Additional parameters for samse function of bwa.\\n(default: -n 1000)\\n"
    genome_fast_a: "Name of genome fasta file. The file must be indexed\\nusingbwa index command prior to this run."
    bam_files: "One or more bam files."
  }
  output {
    File out_stdout = stdout()
    Directory out_dir_out = "${in_dir_out}"
    File out_all_reads = "${in_all_reads}"
    File out_add_all_reads = "${in_add_all_reads}"
  }
}