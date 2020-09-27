version 1.0

task RepEnrichpy {
  input {
    String? paired_end
    String? collapse_repeat
    Int? threshold
    Int? tolerance
    Int? fast_q_file_two
    Int? cpus
    String? all_count_method
    File? is_bed
    String annotation_file
    String output_folder
    String output_prefix
    Int hela_input_chips_eq_rep_one
    String fast_q_file
    String alignment_bam
  }
  command <<<
    RepEnrich_py \
      ~{annotation_file} \
      ~{output_folder} \
      ~{output_prefix} \
      ~{hela_input_chips_eq_rep_one} \
      ~{fast_q_file} \
      ~{alignment_bam} \
      ~{if defined(paired_end) then ("--pairedend " +  '"' + paired_end + '"') else ""} \
      ~{if defined(collapse_repeat) then ("--collapserepeat " +  '"' + collapse_repeat + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(tolerance) then ("--tolerance " +  '"' + tolerance + '"') else ""} \
      ~{if defined(fast_q_file_two) then ("--fastqfile2 " +  '"' + fast_q_file_two + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(all_count_method) then ("--allcountmethod " +  '"' + all_count_method + '"') else ""} \
      ~{if defined(is_bed) then ("--is_bed " +  '"' + is_bed + '"') else ""}
  >>>
  parameter_meta {
    paired_end: "Designate this option for paired-end sequencing.\\nDefault FALSE change to TRUE"
    collapse_repeat: "Designate this option to generate a collapsed repeat\\ntype. Uncollapsed output is generated in addition to\\ncollapsed repeat type. Simple_repeat is default to\\nsimplify downstream analysis. You can change the\\ndefault to another repeat name to collapse a seperate\\nspecific repeat instead or if the name of\\nSimple_repeat is different for your organism. Default\\nSimple_repeat"
    threshold: "This option specifies overlap between repetitive\\nelements and reads that map uniquely to the genome.\\nYou should change the option depending on the read\\nlength. We felt that the the value should be close to\\nhalf read length. Default 21"
    tolerance: "This option helps to modifies the scrutiny of the\\nregion sorter. Default 500"
    fast_q_file_two: "Enter fastqfile2 when using paired-end option. Default\\nnone"
    cpus: "Enter available cpus per node. The more cpus the\\nfaster RepEnrich performs. RepEnrich is designed to\\nonly work on one node. Default: \\\"1\\\""
    all_count_method: "By default the pipeline only outputs the fraction\\ncount method. Consdidered to be the best way to count\\nmultimapped reads. Changing this option will include\\nthe unique count method, a conservative count, and the\\ntotal count method, a liberal counting strategy. Our\\nevaluation of simulated data indicated fraction\\ncounting is best. Default = FALSE, change to TRUE"
    is_bed: "Is the annotation file a bed file. This is also a\\ncompatible format. The file needs to be a tab\\nseperated bed with optional fields. Ex. format chr\\nstart end Name_element class family. The class and\\nfamily should identical to name_element if not\\napplicable. Default FALSE change to TRUE\\n"
    annotation_file: "List RepeatMasker.org annotation file for your\\norganism. The file may be downloaded from the\\nRepeatMasker.org website. Example:\\n/data/annotation/hg19/hg19_repeatmasker.txt"
    output_folder: "List folder to contain results. Example: /outputfolder"
    output_prefix: "Enter prefix name for data. Example:"
    hela_input_chips_eq_rep_one: "setup_folder          List folder that contains the repeat element"
    fast_q_file: "Enter file for the fastq reads that map to multiple\\nlocations. Example /data/multimap.fastq"
    alignment_bam: "Enter bamfile output for reads that map uniquely.\\nExample /bamfiles/old.bam"
  }
  output {
    File out_stdout = stdout()
  }
}