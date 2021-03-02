version 1.0

task MiRge30 {
  input {
    Boolean? samples
    Boolean? mir_db
    Boolean? libraries_path
    Boolean? organism_name
    Boolean? cr_threshold
    Boolean? phred_six_four
    Boolean? spike_in
    Boolean? isoform_entropy
    Boolean? threads
    Boolean? atoi
    Boolean? tcf_out
    Boolean? gff_out
    Boolean? bam_out
    Boolean? trna_frag
    Boolean? outdir
    Boolean? diff_ex
    Boolean? metadata
    Boolean? quiet
    Boolean? adapter
    Boolean? front
    Boolean? cut
    Boolean? next_seq_trim
    Boolean? quality_cut_off
    Boolean? length
    Boolean? trim_n
    Boolean? minimum_length
    Boolean? uniq_mol_ids
    Boolean? u_mid_ed_up
    Boolean? qiagen_umi
    Boolean? novel_mirna
    Boolean? minlength
    Boolean? maxlength
    Boolean? min_read_counts
    Boolean? max_mapping_loci
    Boolean? seed_length
    Boolean? overlap_len_cut_off
    Boolean? cluster_length
    Boolean? bowtie_path
    Boolean? sam_tools_path
    Boolean? rna_fold_path
  }
  command <<<
    miRge3_0 \
      ~{if (samples) then "--samples" else ""} \
      ~{if (mir_db) then "--mir-DB" else ""} \
      ~{if (libraries_path) then "--libraries-path" else ""} \
      ~{if (organism_name) then "--organism-name" else ""} \
      ~{if (cr_threshold) then "--crThreshold" else ""} \
      ~{if (phred_six_four) then "--phred64" else ""} \
      ~{if (spike_in) then "--spikeIn" else ""} \
      ~{if (isoform_entropy) then "--isoform-entropy" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (atoi) then "--AtoI" else ""} \
      ~{if (tcf_out) then "--tcf-out" else ""} \
      ~{if (gff_out) then "--gff-out" else ""} \
      ~{if (bam_out) then "--bam-out" else ""} \
      ~{if (trna_frag) then "--tRNA-frag" else ""} \
      ~{if (outdir) then "--outDir" else ""} \
      ~{if (diff_ex) then "--diffex" else ""} \
      ~{if (metadata) then "--metadata" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (adapter) then "--adapter" else ""} \
      ~{if (front) then "--front" else ""} \
      ~{if (cut) then "--cut" else ""} \
      ~{if (next_seq_trim) then "--nextseq-trim" else ""} \
      ~{if (quality_cut_off) then "--quality-cutoff" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (trim_n) then "--trim-n" else ""} \
      ~{if (minimum_length) then "--minimum-length" else ""} \
      ~{if (uniq_mol_ids) then "--uniq-mol-ids" else ""} \
      ~{if (u_mid_ed_up) then "--umiDedup" else ""} \
      ~{if (qiagen_umi) then "--qiagenumi" else ""} \
      ~{if (novel_mirna) then "--novel-miRNA" else ""} \
      ~{if (minlength) then "--minLength" else ""} \
      ~{if (maxlength) then "--maxLength" else ""} \
      ~{if (min_read_counts) then "--minReadCounts" else ""} \
      ~{if (max_mapping_loci) then "--maxMappingLoci" else ""} \
      ~{if (seed_length) then "--seedLength" else ""} \
      ~{if (overlap_len_cut_off) then "--overlapLenCutoff" else ""} \
      ~{if (cluster_length) then "--clusterLength" else ""} \
      ~{if (bowtie_path) then "--bowtie-path" else ""} \
      ~{if (sam_tools_path) then "--samtools-path" else ""} \
      ~{if (rna_fold_path) then "--RNAfold-path" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirge3:0.0.7--pyh3252c3a_0"
  }
  parameter_meta {
    samples: "list of one or more samples separated by comma or a file with list of samples separated by new line (accepts *.fastq, *.fastq.gz)"
    mir_db: "the reference database of miRNA. Options: miRBase and miRGeneDB (Default: miRBase)"
    libraries_path: "the path to miRge libraries"
    organism_name: "the organism name can be human, mouse, fruitfly, nematode, rat or zebrafish"
    cr_threshold: "the threshold of the proportion of canonical reads for the miRNAs to retain. Range for ex (0 - 0.5), (Default: 0.1)"
    phred_six_four: "phred64 format (Default: 33)"
    spike_in: "switch to annotate spike-ins if spike-in bowtie index files are located at the path of bowtie's index files (Default: off)"
    isoform_entropy: "switch to calculate isomir entropy (default: off)"
    threads: "the number of processors to use for trimming, qc, and alignment (Default: 1)"
    atoi: "switch to calculate A to I editing (Default: off)"
    tcf_out: "switch to write trimmed and collapsed fasta file (Default: off)"
    gff_out: "switch to output isomiR results in gff format (Default: off)"
    bam_out: "switch to output results in bam format (Default: off)"
    trna_frag: "switch to analyze tRNA fragment and halves (Default: off)"
    outdir: "the directory of the outputs (Default: current directory)"
    diff_ex: "perform differential expression with DESeq2 (Default: off)"
    metadata: "the path to metadata file (Default: off, require '.csv' file format if -dex is opted)"
    quiet: "enable quiet/silent mode, only show warnings and errors (Default: off)"
    adapter: "Sequence of a 3' adapter. The adapter and subsequent bases are trimmed"
    front: "Sequence of a 5' adapter. The adapter and any preceding bases are trimmed"
    cut: "Remove bases from each read. If LENGTH is positive, remove bases from the beginning. If LENGTH is negative, remove bases from the end"
    next_seq_trim: "NextSeq-specific quality trimming (each read). Trims also dark cycles appearing as high-quality G bases"
    quality_cut_off: "Trim low-quality bases from 5' and/or 3' ends of each read before adapter removal. If one value is given, only the 3' end is trimmed\\nIf two comma-separated cutoffs are given, the 5' end is trimmed with the first cutoff, the 3' end with the second"
    length: "Shorten reads to LENGTH. Positive values remove bases at the end while negative ones remove bases at the beginning. This and the following\\nmodifications are applied after adapter trimming"
    trim_n: "Trim N's on ends of reads"
    minimum_length: "Discard reads shorter than LEN. (Default: 16)"
    uniq_mol_ids: "Removes PCR duplicates and trim UMI of length by specifying two comma-separated cutoffs as 5’ cutoff,3’ bp from both ends of the read. eg: 4,4 or 0,4"
    u_mid_ed_up: "Specifies argument to removes PCR duplicates (Default: False); if TRUE it will remove UMI and remove PCR duplicates otherwise it only remove UMI and keep the raw counts"
    qiagen_umi: "Removes PCR duplicates of reads obtained from Qiagen platform (Default: Illumina; \\\"-umi x,y \\\" Required)"
    novel_mirna: "include prediction of novel miRNAs"
    minlength: "the minimum length of the retained reads for novel miRNA detection (default: 16)"
    maxlength: "the maximum length of the retained reads for novel miRNA detection (default: 25)"
    min_read_counts: "the minimum read counts supporting novel miRNA detection (default: 2)"
    max_mapping_loci: "the maximum number of mapping loci for the retained reads for novel miRNA detection (default: 3)"
    seed_length: "the seed length when invoking Bowtie for novel miRNA detection (default: 25)"
    overlap_len_cut_off: "the length of overlapped seqence when joining reads into longer sequences based on the coordinate\\non the genome for novel miRNA detection (default: 14)"
    cluster_length: "the maximum length of the clustered sequences for novel miRNA detection (default: 30)"
    bowtie_path: "the path to system's directory containing bowtie binary"
    sam_tools_path: "the path to system's directory containing samtools binary"
    rna_fold_path: "the path to system's directory containing RNAfold binary"
  }
  output {
    File out_stdout = stdout()
  }
}