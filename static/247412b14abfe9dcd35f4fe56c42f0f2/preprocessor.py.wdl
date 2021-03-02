version 1.0

task Preprocessorpy {
  input {
    File? input_file
    Int? chrom_size
    String? out_prefix
    Int? km_er_size
    Int? bin
    Int? depth
    Int? q_cut
    String? method
  }
  command <<<
    preprocessor_py \
      ~{if defined(input_file) then ("--inputFile " +  '"' + input_file + '"') else ""} \
      ~{if defined(chrom_size) then ("--chromSize " +  '"' + chrom_size + '"') else ""} \
      ~{if defined(out_prefix) then ("--outPrefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmerSize " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(bin) then ("--bin " +  '"' + bin + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(q_cut) then ("--qCut " +  '"' + q_cut + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Input file in BAM format. BAM file must be sorted and\\nindexed using samTools. Replicates separated by\\ncomma(',') e.g. \\\"-i rep1.bam,rep2.bam,rep3.bam\\\""
    chrom_size: "Chromosome size file. Tab or space separated text file\\nwith 2 columns: first column is chromosome name,\\nsecond column is size of the chromosome."
    out_prefix: "Prefix of output wig files(s). \\\"Prefix_Forward.wig\\\"\\nand \\\"Prefix_Reverse.wig\\\" will be generated"
    km_er_size: "Kmer size [6,12] to correct nucleotide composition\\nbias. kmerSize < 0.5*read_lenght. larger KmerSize\\nmight make program slower. Set kmerSize = 0 to turn\\noff nucleotide compsition bias correction. default=6"
    bin: "Chromosome chunk size. Each chomosome will be cut into\\nsmall chunks of this size. Decrease chunk size will\\nsave more RAM. default=100000 (bp)"
    depth: "Reference reads count (default = 10 million).\\nSequencing depth will be normailzed to this number, so\\nthat wig files are comparable between replicates."
    q_cut: "phred scaled mapping quality threshhold to determine\\n\\\"uniqueness\\\" of alignments. default=30"
    method: "methods (\\\"EM\\\", \\\"AM\\\", \\\"GM\\\", or \\\"SNR\\\") used to\\nconsolidate replicates and reduce noise. \\\"EM\\\" =\\nEntropy weighted mean, \\\"AM\\\"=Arithmetic mean,\\n\\\"GM\\\"=Geometric mean, \\\"SNR\\\"=Signal-to-noise ratio.\\ndefault=EM\\n"
  }
  output {
    File out_stdout = stdout()
  }
}