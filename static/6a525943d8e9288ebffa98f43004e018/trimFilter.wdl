version 1.0

task TrimFilter {
  input {
    Boolean? if_q
    Boolean? length
    File? output_prefix_path
    Boolean? gzip
    File? adapter
    Boolean? idx
    Boolean? if_a
    Boolean? method
    Boolean? trim_q
    Boolean? min_l
    Boolean? min_q
    Boolean? zero_q
    Int? percent
    Boolean? global
    Boolean? trim_n
  }
  command <<<
    trimFilter \
      ~{if (if_q) then "--ifq" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (output_prefix_path) then "--output" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if defined(adapter) then ("--adapter " +  '"' + adapter + '"') else ""} \
      ~{if (idx) then "--idx" else ""} \
      ~{if (if_a) then "--ifa" else ""} \
      ~{if (method) then "--method" else ""} \
      ~{if (trim_q) then "--trimQ" else ""} \
      ~{if (min_l) then "--minL" else ""} \
      ~{if (min_q) then "--minQ" else ""} \
      ~{if (zero_q) then "--zeroQ" else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if (global) then "--global" else ""} \
      ~{if (trim_n) then "--trimN" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    if_q: "fastq input file [*fq|*fq.gz|*fq.bz2], mandatory option."
    length: "read length: length of the reads, mandatory option."
    output_prefix_path: "output prefix (with path), optional (default ./out)."
    gzip: "gzip output files: yes or no (default yes)"
    adapter: "input. Three fields separated by colons:\\n<ADAPTERS.fa>: fasta file containing adapters,\\n<mismatches>: maximum mismatch count allowed,\\n<score>: score threshold  for the aligner."
    idx: "index input file. To be included with methods to remove.\\ncontaminations (TREE, BLOOM). 3 fields separated by colons:\\n<INDEX_FILE>: output of makeTree, makeBloom,\\n<score>: score threshold to accept a match [0,1],\\n[lmer_len]: the length of the lmers to be\\nlooked for in the reads [1,READ_LENGTH]."
    if_a: "fasta input file of potential contaminations.\\nTo be included only with method TREE\\n(it excludes the option --idx). Otherwise, an\\nindex file has to be precomputed and given as parameter\\n(see option --idx). 3 fields separated by colons:\\n<INPUT.fa>: fasta input file [*fa|*fa.gz|*fa.bz2],\\n<score>: score threshold to accept a match [0,1],\\n<lmer_len>: depth of the tree: [1,READ_LENGTH].\\nCorresponds to the length of the lmers to be\\nlooked for in the reads."
    method: "method used to look for contaminations:\\nTREE:  uses a 4-ary tree. Index file optional,\\nBLOOM: uses a bloom filter. Index file mandatory."
    trim_q: "NO:       does nothing to low quality reads (default),\\nALL:      removes all reads containing at least one low\\nquality nucleotide.\\nENDS:     trims the ends of the read if their quality is\\nbelow the threshold -q,\\nFRAC:     discards a read if the fraction of bases with\\nlow quality scores (below -q) is over 5 percent\\nor a user defined percentage (-p).\\nENDSFRAC: trims the ends and then discards the read if\\nthere are more low quality nucleotides than\\nallowed by the option -p.\\nGLOBAL:   removes n1 bases on the left and n2 on the\\nright, specified in -g.\\nAll reads are discarded if they are shorter than MINL\\n(specified with -m or --minL)."
    min_l: "minimum length allowed for a read before it is discarded\\n(default 25)."
    min_q: "minimum quality allowed (int), optional (default 27)."
    zero_q: "value of ASCII character representing zero quality (int), optional (default 33)."
    percent: "of low quality bases tolerated before\\ndiscarding a read (default 5),"
    global: "required option if --trimQ GLOBAL is passed. Two int,\\nn1:n2, have to be passed specifying the number of bases\\nto be globally cut from the left and right, respectively."
    trim_n: "NO:     does nothing to reads containing N's,\\nALL:    removes all reads containing N's,\\nENDS:   trims ends of reads with N's,\\nSTRIPS: looks for the largest substring with no N's.\\nAll reads are discarded if they are shorter than the\\nsequence length specified by -m/--minL.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_prefix_path = "${in_output_prefix_path}"
  }
}