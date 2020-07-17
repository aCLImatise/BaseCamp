version 1.0

task Behst.py {
  input {
    String? target_extension
    String? query_extension
    String? gene_annotation_file
    String? transcript_file
    Int? interaction_file
    String input_bed_file
    String be_hst_data_files_folder
  }
  command <<<
    behst.py \
      ~{input_bed_file} \
      ~{be_hst_data_files_folder} \
      ~{if defined(target_extension) then ("--target-extension " +  '"' + target_extension + '"') else ""} \
      ~{if defined(query_extension) then ("--query-extension " +  '"' + query_extension + '"') else ""} \
      ~{if defined(gene_annotation_file) then ("--gene-annotation-file " +  '"' + gene_annotation_file + '"') else ""} \
      ~{if defined(transcript_file) then ("--transcript-file " +  '"' + transcript_file + '"') else ""} \
      ~{if defined(interaction_file) then ("--interaction-file " +  '"' + interaction_file + '"') else ""}
  >>>
  parameter_meta {
    target_extension: "target extension basepair integer. Default is 9400."
    query_extension: "query extension basepair integer. Default is 24100."
    gene_annotation_file: "path of the gene annotation file (.gtf format). Default is the GENCODE annotation v.19 file (gencode.v19.annotation_withproteinids.gtf)."
    transcript_file: "path to the principal transcript file (.bed format). Default is APPRIS transcript 2017_01.v20 file (appris_data_principal.bed)"
    interaction_file: "path to the chromatin interactions file (.hiccups format). Default is the Hi-C HiCCUPS from Lieberman- Aiden 2014 (hic_8celltypes.hiccups)."
    input_bed_file: "input BED file of genomic regions"
    be_hst_data_files_folder: "path to the folder where you downloaded the default BEHST data files with ./download_behst_data.sh"
  }
}