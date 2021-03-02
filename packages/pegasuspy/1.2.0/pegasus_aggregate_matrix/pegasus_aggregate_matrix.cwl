class: CommandLineTool
id: pegasus_aggregate_matrix.cwl
inputs:
- id: in_restriction
  doc: '...           Select data that satisfy all restrictions. Each restriction
    takes the format of name:value,...,value or name:~value,..,value, where ~ refers
    to not. You can specifiy multiple restrictions by setting this option multiple
    times.'
  type: string?
  inputBinding:
    prefix: --restriction
- id: in_attributes
  doc: Specify a comma-separated list of outputted attributes. These attributes should
    be column names in the csv file.
  type: File?
  inputBinding:
    prefix: --attributes
- id: in_default_reference
  doc: If sample count matrix is in either DGE, mtx, csv, tsv or loom format and there
    is no Reference column in the csv_file, use <reference> as the reference. This
    option can also be used for replacing genome names. For example, if <reference>
    is 'hg19:GRCh38,GRCh38', we will change any genome with name 'hg19' to 'GRCh38'
    and if no genome is provided, 'GRCh38' is the default.
  type: long?
  inputBinding:
    prefix: --default-reference
- id: in_select_only_singlets
  doc: If we have demultiplexed data, turning on this option will make pegasus only
    include barcodes that are predicted as singlets.
  type: boolean?
  inputBinding:
    prefix: --select-only-singlets
- id: in_remap_singlets
  doc: "Remap singlet names using <remap_string>, where <remap_string> takes the format\
    \ \"new_name_i:old_name_1,old_name_2;new_name_ii:old_name_3;...\". For example,\
    \ if we hashed 5 libraries from 3 samples sample1_lib1, sample1_lib2, sample2_lib1,\
    \ sample2_lib2 and sample3, we can remap them to 3 samples using this string:\
    \ \"sample1:sample1_lib1,sample1_lib2;sample2:sample2_lib1,sample2_lib2\". In\
    \ this way, the new singlet names will be in metadata field with key 'assignment',\
    \ while the old names will be kept in metadata field with key 'assignment.orig'."
  type: string?
  inputBinding:
    prefix: --remap-singlets
- id: in_subset_singlets
  doc: If select singlets, only select singlets in the <subset_string>, which takes
    the format "name1,name2,...". Note that if --remap-singlets is specified, subsetting
    happens after remapping. For example, we can only select singlets from sampe 1
    and 3 using "sample1,sample3".
  type: long?
  inputBinding:
    prefix: --subset-singlets
- id: in_min_genes
  doc: Only keep cells with at least <number> of genes.
  type: long?
  inputBinding:
    prefix: --min-genes
- id: in_max_genes
  doc: Only keep cells with less than <number> of genes.
  type: long?
  inputBinding:
    prefix: --max-genes
- id: in_min_um_is
  doc: Only keep cells with at least <number> of UMIs.
  type: long?
  inputBinding:
    prefix: --min-umis
- id: in_max_um_is
  doc: Only keep cells with less than <number> of UMIs.
  type: long?
  inputBinding:
    prefix: --max-umis
- id: in_mi_to_prefix
  doc: Prefix for mitochondrial genes. If multiple prefixes are provided, separate
    them by comma (e.g. "MT-,mt-").
  type: string?
  inputBinding:
    prefix: --mito-prefix
- id: in_percent_mi_to
  doc: Only keep cells with mitochondrial percent less than <percent>%. Only when
    both mito_prefix and percent_mito set, the mitochondrial filter will be triggered.
  type: string?
  inputBinding:
    prefix: --percent-mito
- id: in_no_append_sample_name
  doc: Turn this option on if you do not want to append sample name in front of each
    sample's barcode (concatenated using '-').
  type: boolean?
  inputBinding:
    prefix: --no-append-sample-name
- id: in_csv_file
  doc: This function takes as input a csv_file, which contains at least 2 columns
    — Sample, sample name; Location, file that contains the count matrices (e.g. filtered_gene_bc_matrices_h5.h5),
    and merges matrices from the same genome together. If multi-modality exists, a
    third Modality column might be required.
  type: string
  inputBinding:
    position: 0
- id: in_output_name
  doc: The output file name.
  type: string
  inputBinding:
    position: 1
- id: in_output_name_dot_zarr_dot_zip
  doc: A zipped Zarr file containing aggregated data.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1
cwlVersion: v1.1
baseCommand:
- pegasus
- aggregate_matrix
