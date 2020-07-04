version 1.0

task RepEnrich.py {
  input {
    String? paired_end
    String? collapse_repeat
    String? threshold
    String? tolerance
    String? fast_q_file_two
    String? cpus
    String? all_count_method
    String? is_bed
    String annotation_file
    String output_folder
    String output_prefix
    String setup_folder
    String fast_q_file
    String alignment_bam
  }
  command <<<
    RepEnrich.py \
      ~{annotation_file} \
      ~{output_folder} \
      ~{output_prefix} \
      ~{setup_folder} \
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
    paired_end: "Designate this option for paired-end sequencing. Default FALSE change to TRUE"
    collapse_repeat: "Designate this option to generate a collapsed repeat type. Uncollapsed output is generated in addition to collapsed repeat type. Simple_repeat is default to simplify downstream analysis. You can change the default to another repeat name to collapse a seperate specific repeat instead or if the name of Simple_repeat is different for your organism. Default Simple_repeat"
    threshold: "This option specifies overlap between repetitive elements and reads that map uniquely to the genome. You should change the option depending on the read length. We felt that the the value should be close to half read length. Default 21"
    tolerance: "This option helps to modifies the scrutiny of the region sorter. Default 500"
    fast_q_file_two: "Enter fastqfile2 when using paired-end option. Default none"
    cpus: "Enter available cpus per node. The more cpus the faster RepEnrich performs. RepEnrich is designed to only work on one node. Default: \"1\""
    all_count_method: "By default the pipeline only outputs the fraction count method. Consdidered to be the best way to count multimapped reads. Changing this option will include the unique count method, a conservative count, and the total count method, a liberal counting strategy. Our evaluation of simulated data indicated fraction counting is best. Default = FALSE, change to TRUE"
    is_bed: "Is the annotation file a bed file. This is also a compatible format. The file needs to be a tab seperated bed with optional fields. Ex. format chr start end Name_element class family. The class and family should identical to name_element if not applicable. Default FALSE change to TRUE"
    annotation_file: "List RepeatMasker.org annotation file for your organism. The file may be downloaded from the RepeatMasker.org website. Example: /data/annotation/hg19/hg19_repeatmasker.txt"
    output_folder: "List folder to contain results. Example: /outputfolder"
    output_prefix: "Enter prefix name for data. Example: HeLa_InputChIPseq_Rep1"
    setup_folder: "List folder that contains the repeat element psuedogenomes. Example /data/annotation/hg19/setup_folder"
    fast_q_file: "Enter file for the fastq reads that map to multiple locations. Example /data/multimap.fastq"
    alignment_bam: "Enter bamfile output for reads that map uniquely. Example /bamfiles/old.bam"
  }
}