version 1.0

task RepEnrichSetuppy {
  input {
    File? n_fragments_file_one
    Int? gap_length
    Int? flanking_length
    File? is_bed
    String annotation_file
    String genome_fast_a
    String setup_folder
  }
  command <<<
    RepEnrich_setup_py \
      ~{annotation_file} \
      ~{genome_fast_a} \
      ~{setup_folder} \
      ~{if defined(n_fragments_file_one) then ("--nfragmentsfile1 " +  '"' + n_fragments_file_one + '"') else ""} \
      ~{if defined(gap_length) then ("--gaplength " +  '"' + gap_length + '"') else ""} \
      ~{if defined(flanking_length) then ("--flankinglength " +  '"' + flanking_length + '"') else ""} \
      ~{if defined(is_bed) then ("--is_bed " +  '"' + is_bed + '"') else ""}
  >>>
  parameter_meta {
    n_fragments_file_one: "Output location of a description file that saves the\\nnumber of fragments processed per repname. Default\\n./repnames_nfragments.txt"
    gap_length: "Length of the spacer used to build repeat\\npsuedogeneomes. Default 200"
    flanking_length: "Length of the flanking region adjacent to the repeat\\nelement that is used to build repeat psuedogeneomes.\\nThe flanking length should be set according to the\\nlength of your reads. Default 25"
    is_bed: "Is the annotation file a bed file. This is also a\\ncompatible format. The file needs to be a tab\\nseperated bed with optional fields. Ex. format chr\\nstart end Name_element class family. The class and\\nfamily should identical to name_element if not\\napplicable. Default FALSE change to TRUE\\n"
    annotation_file: "List annotation file. The annotation file contains the\\nrepeat masker annotation for the genome of interest\\nand may be downloaded at RepeatMasker.org Example\\n/data/annotation/mm9/mm9.fa.out"
    genome_fast_a: "File name and path for genome of interest in fasta\\nformat. Example /data/annotation/mm9/mm9.fa"
    setup_folder: "List folder to contain bamfiles for repeats and repeat\\nelement psuedogenomes. Example\\n/data/annotation/mm9/setup"
  }
  output {
    File out_stdout = stdout()
  }
}