version 1.0

task Bam2wig.py {
  input {
    String? input_file
    String? chrom_size
    String? out_prefix
    String? wig_sum
    Boolean? skip_multi_hits
    String? strand
    String? mapq
  }
  command <<<
    bam2wig.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(chrom_size) then ("--chromSize " +  '"' + chrom_size + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(wig_sum) then ("--wigsum " +  '"' + wig_sum + '"') else ""} \
      ~{true="--skip-multi-hits" false="" skip_multi_hits} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM format. BAM file must be sorted and indexed using samTools. .bam and .bai files should be placed in the same directory."
    chrom_size: "Chromosome size file. Tab or space separated text file with 2 columns: first column is chromosome name/ID, second column is chromosome size. Chromosome name (such as \"chr1\") should be consistent between this file and the BAM file."
    out_prefix: "Prefix of output wiggle files(s). One wiggle file will be generated for non strand-specific data, two wiggle files (\"Prefix_Forward.wig\" and \"Prefix_Reverse.wig\") will be generated for strand-specific RNA-seq data."
    wig_sum: "Specified wigsum. Eg: 1,000,000,000 equals to coverage of 10 million 100nt reads. Ignore this option to disable normalization"
    skip_multi_hits: "Skip non-unique hit reads."
    strand: "How read(s) were stranded during sequencing. For example: --strand='1++,1--,2+-,2-+' means that this is a pair-end, strand-specific RNA-seq data, and the strand rule is: read1 mapped to '+' => parental gene on '+'; read1 mapped to '-' => parental gene on '-'; read2 mapped to '+' => parental gene on '-'; read2 mapped to '-' => parental gene on '+'.  If you are not sure about the strand rule, run 'infer_experiment.py' default=none (Not a strand specific RNA-seq data)."
    mapq: "Minimum mapping quality to determine \"uniquely mapped\". default=30"
  }
}