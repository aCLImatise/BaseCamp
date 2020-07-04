version 1.0

task RepEnrichSetup.py {
  input {
    String? n_fragments_file_one
    String? gap_length
    String? flanking_length
    String? is_bed
    String annotation_file
    String genome_fast_a
    String setup_folder
  }
  command <<<
    RepEnrich_setup.py \
      ~{annotation_file} \
      ~{genome_fast_a} \
      ~{setup_folder} \
      ~{if defined(n_fragments_file_one) then ("--nfragmentsfile1 " +  '"' + n_fragments_file_one + '"') else ""} \
      ~{if defined(gap_length) then ("--gaplength " +  '"' + gap_length + '"') else ""} \
      ~{if defined(flanking_length) then ("--flankinglength " +  '"' + flanking_length + '"') else ""} \
      ~{if defined(is_bed) then ("--is_bed " +  '"' + is_bed + '"') else ""}
  >>>
  parameter_meta {
    n_fragments_file_one: "Output location of a description file that saves the number of fragments processed per repname. Default ./repnames_nfragments.txt"
    gap_length: "Length of the spacer used to build repeat psuedogeneomes. Default 200"
    flanking_length: "Length of the flanking region adjacent to the repeat element that is used to build repeat psuedogeneomes. The flanking length should be set according to the length of your reads. Default 25"
    is_bed: "Is the annotation file a bed file. This is also a compatible format. The file needs to be a tab seperated bed with optional fields. Ex. format chr start end Name_element class family. The class and family should identical to name_element if not applicable. Default FALSE change to TRUE"
    annotation_file: "List annotation file. The annotation file contains the repeat masker annotation for the genome of interest and may be downloaded at RepeatMasker.org Example /data/annotation/mm9/mm9.fa.out"
    genome_fast_a: "File name and path for genome of interest in fasta format. Example /data/annotation/mm9/mm9.fa"
    setup_folder: "List folder to contain bamfiles for repeats and repeat element psuedogenomes. Example /data/annotation/mm9/setup"
  }
}