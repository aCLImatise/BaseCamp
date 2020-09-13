version 1.0

task Bam2wigpy {
  input {
    File? input_file
    Int? chrom_size
    File? out_prefix
    Int? wig_sum
    Boolean? skip_multi_hits
    Int? strand
    Int? mapq
  }
  command <<<
    bam2wig_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(chrom_size) then ("--chromSize " +  '"' + chrom_size + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(wig_sum) then ("--wigsum " +  '"' + wig_sum + '"') else ""} \
      ~{if (skip_multi_hits) then "--skip-multi-hits" else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM format. BAM file must be sorted\\nand indexed using samTools. .bam and .bai files should\\nbe placed in the same directory."
    chrom_size: "Chromosome size file. Tab or space separated text file\\nwith 2 columns: first column is chromosome name/ID,\\nsecond column is chromosome size. Chromosome name\\n(such as \\\"chr1\\\") should be consistent between this\\nfile and the BAM file."
    out_prefix: "Prefix of output wiggle files(s). One wiggle file will\\nbe generated for non strand-specific data, two wiggle\\nfiles (\\\"Prefix_Forward.wig\\\" and \\\"Prefix_Reverse.wig\\\")\\nwill be generated for strand-specific RNA-seq data."
    wig_sum: "Specified wigsum. Eg: 1,000,000,000 equals to coverage\\nof 10 million 100nt reads. Ignore this option to\\ndisable normalization"
    skip_multi_hits: "Skip non-unique hit reads."
    strand: "How read(s) were stranded during sequencing. For\\nexample: --strand='1++,1--,2+-,2-+' means that this is\\na pair-end, strand-specific RNA-seq data, and the\\nstrand rule is: read1 mapped to '+' => parental gene\\non '+'; read1 mapped to '-' => parental gene on '-';\\nread2 mapped to '+' => parental gene on '-'; read2\\nmapped to '-' => parental gene on '+'.  If you are not\\nsure about the strand rule, run 'infer_experiment.py'\\ndefault=none (Not a strand specific RNA-seq data)."
    mapq: "Minimum mapping quality to determine \\\"uniquely\\nmapped\\\". default=30\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_prefix = "${in_out_prefix}"
  }
}