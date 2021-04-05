version 1.0

task Realphy {
  input {
    Boolean? read_length
    Boolean? quality
    Boolean? poly_threshold
    Boolean? per_base_cov
    Boolean? ref
    Boolean? root
    Boolean? refn
    File? genes
    Boolean? gap_threshold
    String? clean
    Boolean? tree_builder
    String? quiet
    String? var_only
    Boolean? seed_length
    Directory? suffix
    String? delete
    File? merge
    Int? gaps
    Boolean? config
    Boolean? tree_options
    Boolean? bowtie_options
    String? version
    Int? jar
    Boolean? x_mx
    String java
    String? available
    String? ram
    String? in
    String? mb
    String m
    String? sequence
    Directory? folder
    String? var_output
  }
  command <<<
    realphy \
      ~{java} \
      ~{available} \
      ~{ram} \
      ~{in} \
      ~{mb} \
      ~{m} \
      ~{sequence} \
      ~{folder} \
      ~{var_output} \
      ~{if (read_length) then "-readLength" else ""} \
      ~{if (quality) then "-quality" else ""} \
      ~{if (poly_threshold) then "-polyThreshold" else ""} \
      ~{if (per_base_cov) then "-perBaseCov" else ""} \
      ~{if (ref) then "-ref" else ""} \
      ~{if (root) then "-root" else ""} \
      ~{if (refn) then "-refN" else ""} \
      ~{if defined(genes) then ("-genes " +  '"' + genes + '"') else ""} \
      ~{if (gap_threshold) then "-gapThreshold" else ""} \
      ~{if defined(clean) then ("-clean " +  '"' + clean + '"') else ""} \
      ~{if (tree_builder) then "-treeBuilder" else ""} \
      ~{if defined(quiet) then ("-quiet " +  '"' + quiet + '"') else ""} \
      ~{if defined(var_only) then ("-varOnly " +  '"' + var_only + '"') else ""} \
      ~{if (seed_length) then "-seedLength" else ""} \
      ~{if (suffix) then "-suffix" else ""} \
      ~{if defined(delete) then ("-delete " +  '"' + delete + '"') else ""} \
      ~{if defined(merge) then ("-merge " +  '"' + merge + '"') else ""} \
      ~{if defined(gaps) then ("-gaps " +  '"' + gaps + '"') else ""} \
      ~{if (config) then "-config" else ""} \
      ~{if (tree_options) then "-treeOptions" else ""} \
      ~{if (bowtie_options) then "-bowtieOptions" else ""} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""} \
      ~{if (x_mx) then "-Xmx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/realphy:1.13--0"
  }
  parameter_meta {
    read_length: "[integer] default=50 Possible values: Integer greater than 30; Size of fragments that are to be produced from the FASTA/GBK input sequences. With longer read lengths the mapping will take longer but will also map more divergent sequences."
    quality: "[integer] default=20; Possible values: Integer value between 0 and 41 that corresponds to quality values in fastq files (PHRED+33). Bases with values below thresold in fastq file will not be considered (fasta files will be converted into fastq files with a quality of 20)."
    poly_threshold: "[double] default=0.95; Possible values: Double value between 0 and 1.  Polymorphisms that occur at lower frequency than the specified threshold at any given position of the alignment will not be considered."
    per_base_cov: "[integer] default=10; Possible values: Integer greater than or equal to 10.  Polymorphisms will only be extracted for regions that are covered by more than the set threshold of reads."
    ref: "[sequence file name (without extension or path!)] default=random; Possible values: The file name of a sequence data set without the extension (.fas, .fasta, .fa, .fna, .fastq, .fastq.gz, .gb or .gbk). Sets the reference sequence."
    root: "[sequence file name (without extension or path!)] default=random; Possible values: The file name of a sequence data set without the extension (.fas, .fasta, .fa, .fna, .fastq, .fastq.gz, .gb or .gbk).  Specifies the root of the tree."
    refn: "[sequence file name (without extension or path!)] where N is the n-th reference genome; default=not set; Possible values: The file name of a sequence data set without the extension (.fas, .fasta, .fa, .fna, .fastq, .fastq.gz, .gb or .gbk)."
    genes: "set then genes (CDS) are extracted from a given genbank file."
    gap_threshold: "[double] default=0; specifies the proportion of input sequences that are allowed to contain gaps in the final sequence alignment (i.e. if set to 0.2 at most 20% of all nucleotides in each final alignment column are allowed to be gaps)."
    clean: "set then the whole analysis will be rerun and existing data will be overwritten!"
    tree_builder: "[integer] default=4;\\n0=Do not build a tree;\\n1=treepuzzle;\\n2=raxml\\n3=max. parsimony (dnapars)\\n4=PhyML (default)"
    quiet: "set then it suppresses any program output except for errors or warnings."
    var_only: "set then homologous positions that are conserved in all input sequences are put out. If set then the reconstructed tree may be wrong."
    seed_length: "[integer] default=22 Possible values: Integer between 4 and 32; specifies k-mer length in bowtie2."
    suffix: "[string] default=not set; appends a suffix to the reference output folder."
    delete: "this option is set then all alignment output files and sequence cut files will be deleted after the program is terminated."
    merge: "this option is set multiple references are selected, a final polymorphism file will be generated which combines all polymorphism files for all references."
    gaps: "this option is set. The gapThreshold is automatically set to 100%, unless a different gapThreshold is specified."
    config: "[string] this specifies the location of the config.txt. If not set it is assumed that the config.txt is in the working directory."
    tree_options: "[text file] This option allows the user to provide command line parameters to the tree program in the first line of a given text file."
    bowtie_options: "[text file] This option allows the user to provide command line parameters to bowtie2 in the first line of a given text file."
    version: "the program's version."
    jar: ""
    x_mx: ""
    java: ""
    available: ""
    ram: ""
    in: ""
    mb: ""
    m: ""
    sequence: ""
    folder: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_suffix = "${in_suffix}"
  }
}