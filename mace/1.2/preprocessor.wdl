version 1.0

task Preprocessor.py {
  input {
    String? input_file
    String? chrom_size
    String? out_prefix
    String? km_er_size
    String? bin
    String? depth
    String? q_cut
    String? method
  }
  command <<<
    preprocessor.py \
      ~{if defined(input_file) then ("--inputFile " +  '"' + input_file + '"') else ""} \
      ~{if defined(chrom_size) then ("--chromSize " +  '"' + chrom_size + '"') else ""} \
      ~{if defined(out_prefix) then ("--outPrefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmerSize " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(bin) then ("--bin " +  '"' + bin + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(q_cut) then ("--qCut " +  '"' + q_cut + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input file in BAM format. BAM file must be sorted and indexed using samTools. Replicates separated by comma(',') e.g. \"-i rep1.bam,rep2.bam,rep3.bam\""
    chrom_size: "Chromosome size file. Tab or space separated text file with 2 columns: first column is chromosome name, second column is size of the chromosome."
    out_prefix: "Prefix of output wig files(s). \"Prefix_Forward.wig\" and \"Prefix_Reverse.wig\" will be generated"
    km_er_size: "Kmer size [6,12] to correct nucleotide composition bias. kmerSize < 0.5*read_lenght. larger KmerSize might make program slower. Set kmerSize = 0 to turn off nucleotide compsition bias correction. default=6"
    bin: "Chromosome chunk size. Each chomosome will be cut into small chunks of this size. Decrease chunk size will save more RAM. default=100000 (bp)"
    depth: "Reference reads count (default = 10 million). Sequencing depth will be normailzed to this number, so that wig files are comparable between replicates."
    q_cut: "phred scaled mapping quality threshhold to determine \"uniqueness\" of alignments. default=30"
    method: "methods (\"EM\", \"AM\", \"GM\", or \"SNR\") used to consolidate replicates and reduce noise. \"EM\" = Entropy weighted mean, \"AM\"=Arithmetic mean, \"GM\"=Geometric mean, \"SNR\"=Signal-to-noise ratio. default=EM"
  }
}