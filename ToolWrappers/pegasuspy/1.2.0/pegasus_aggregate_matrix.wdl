version 1.0

task PegasusAggregateMatrix {
  input {
    String? restriction
    File? attributes
    Int? default_reference
    Boolean? select_only_singlets
    String? remap_singlets
    Int? subset_singlets
    Int? min_genes
    Int? max_genes
    Int? min_um_is
    Int? max_um_is
    String? mi_to_prefix
    String? percent_mi_to
    Boolean? no_append_sample_name
    String csv_file
    String output_name
    String output_name_dot_zarr_dot_zip
  }
  command <<<
    pegasus aggregate_matrix \
      ~{csv_file} \
      ~{output_name} \
      ~{output_name_dot_zarr_dot_zip} \
      ~{if defined(restriction) then ("--restriction " +  '"' + restriction + '"') else ""} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{if defined(default_reference) then ("--default-reference " +  '"' + default_reference + '"') else ""} \
      ~{if (select_only_singlets) then "--select-only-singlets" else ""} \
      ~{if defined(remap_singlets) then ("--remap-singlets " +  '"' + remap_singlets + '"') else ""} \
      ~{if defined(subset_singlets) then ("--subset-singlets " +  '"' + subset_singlets + '"') else ""} \
      ~{if defined(min_genes) then ("--min-genes " +  '"' + min_genes + '"') else ""} \
      ~{if defined(max_genes) then ("--max-genes " +  '"' + max_genes + '"') else ""} \
      ~{if defined(min_um_is) then ("--min-umis " +  '"' + min_um_is + '"') else ""} \
      ~{if defined(max_um_is) then ("--max-umis " +  '"' + max_um_is + '"') else ""} \
      ~{if defined(mi_to_prefix) then ("--mito-prefix " +  '"' + mi_to_prefix + '"') else ""} \
      ~{if defined(percent_mi_to) then ("--percent-mito " +  '"' + percent_mi_to + '"') else ""} \
      ~{if (no_append_sample_name) then "--no-append-sample-name" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1"
  }
  parameter_meta {
    restriction: "...           Select data that satisfy all restrictions. Each restriction takes the format of name:value,...,value or name:~value,..,value, where ~ refers to not. You can specifiy multiple restrictions by setting this option multiple times."
    attributes: "Specify a comma-separated list of outputted attributes. These attributes should be column names in the csv file."
    default_reference: "If sample count matrix is in either DGE, mtx, csv, tsv or loom format and there is no Reference column in the csv_file, use <reference> as the reference. This option can also be used for replacing genome names. For example, if <reference> is 'hg19:GRCh38,GRCh38', we will change any genome with name 'hg19' to 'GRCh38' and if no genome is provided, 'GRCh38' is the default."
    select_only_singlets: "If we have demultiplexed data, turning on this option will make pegasus only include barcodes that are predicted as singlets."
    remap_singlets: "Remap singlet names using <remap_string>, where <remap_string> takes the format \\\"new_name_i:old_name_1,old_name_2;new_name_ii:old_name_3;...\\\". For example, if we hashed 5 libraries from 3 samples sample1_lib1, sample1_lib2, sample2_lib1, sample2_lib2 and sample3, we can remap them to 3 samples using this string: \\\"sample1:sample1_lib1,sample1_lib2;sample2:sample2_lib1,sample2_lib2\\\". In this way, the new singlet names will be in metadata field with key 'assignment', while the old names will be kept in metadata field with key 'assignment.orig'."
    subset_singlets: "If select singlets, only select singlets in the <subset_string>, which takes the format \\\"name1,name2,...\\\". Note that if --remap-singlets is specified, subsetting happens after remapping. For example, we can only select singlets from sampe 1 and 3 using \\\"sample1,sample3\\\"."
    min_genes: "Only keep cells with at least <number> of genes."
    max_genes: "Only keep cells with less than <number> of genes."
    min_um_is: "Only keep cells with at least <number> of UMIs."
    max_um_is: "Only keep cells with less than <number> of UMIs."
    mi_to_prefix: "Prefix for mitochondrial genes. If multiple prefixes are provided, separate them by comma (e.g. \\\"MT-,mt-\\\")."
    percent_mi_to: "Only keep cells with mitochondrial percent less than <percent>%. Only when both mito_prefix and percent_mito set, the mitochondrial filter will be triggered."
    no_append_sample_name: "Turn this option on if you do not want to append sample name in front of each sample's barcode (concatenated using '-')."
    csv_file: "This function takes as input a csv_file, which contains at least 2 columns — Sample, sample name; Location, file that contains the count matrices (e.g. filtered_gene_bc_matrices_h5.h5), and merges matrices from the same genome together. If multi-modality exists, a third Modality column might be required."
    output_name: "The output file name."
    output_name_dot_zarr_dot_zip: "A zipped Zarr file containing aggregated data."
  }
  output {
    File out_stdout = stdout()
  }
}