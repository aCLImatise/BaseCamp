class: CommandLineTool
id: computeOrderedMatrix.cwl
inputs:
- id: in_score_filename
  doc: "bigwig files, the ordered matrix is computedfrom.\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --scoreFileName
- id: in_regions_filename
  doc: "BED files definig the genomic regions of the\nmatrix.Multiple files can be\
    \ provided, but the per\ngroup information will be lost due to the clustering\n\
    (default: None)"
  type: string[]
  inputBinding:
    prefix: --regionsFileName
- id: in_out_filename
  doc: "Matrix clustered by the given reference samples\n(default: None)"
  type: string
  inputBinding:
    prefix: --outFileName
- id: in_group_using_samples
  doc: "sample indices (order of the bigwig files given via\n-S).It is 1-based and\
    \ is used to define the reference\nsamples. The reference samples will be used\
    \ for\nsorting/clustering the regions (given bed files),\nbefore all samples will\
    \ be used to generate the output\nmatrix. Several indices can be added while separated\n\
    by space from each other. Default is None and will\ntake all the samples into\
    \ account to sort/cluster the\nregions. (default: None)"
  type: string[]
  inputBinding:
    prefix: --groupUsingSamples
- id: in_number_of_processors
  doc: "From deepTools doc: Number of processors to use. Type\n\"max/2\" to use half\
    \ the maximum number of processors\nor \"max\" to use all available processors.\
    \ (default:\n[1, 1])"
  type: long[]
  inputBinding:
    prefix: --numberOfProcessors
- id: in_outfile_sorted_regions
  doc: "From deepTools doc: File name in which the regions are\nsaved after skiping\
    \ zeros or min/max threshold values.\nThe order of the regions in the file follows\
    \ the\nsorting order selected. This is useful, for example,\nto generate other\
    \ heatmaps keeping the sorting of the\nfirst heatmap. (default: None)"
  type: long
  inputBinding:
    prefix: --outFileSortedRegions
- id: in_output_reference_matrix
  doc: "Matrix on the reference sampels only before clustering\n(default: None)"
  type: string
  inputBinding:
    prefix: --outputReferenceMatrix
- id: in_k_means
  doc: "number of clusters in k-means clustering (default:\nNone)"
  type: long
  inputBinding:
    prefix: --kmeans
- id: in_hc_lust
  doc: "Number of clusters to compute using\nhierarchicalclustering as defined by\
    \ deepTools\nplotHeatmap (default: None)"
  type: long
  inputBinding:
    prefix: --hclust
- id: in_before_region_start_length
  doc: "From deepTools doc: Distance upstream of the start\nsite of the regions defined\
    \ in the region file. If the\nregions are genes, this would be the distance upstream\n\
    of the transcription start site. (default: [0, 0])"
  type: long[]
  inputBinding:
    prefix: --beforeRegionStartLength
- id: in_after_region_start_length
  doc: "From deepTools doc: Distance downstream of the end\nsite of the given regions.\
    \ If the regions are genes,\nthis would be the distance downstream of the\ntranscription\
    \ end site. (default: [0, 0])"
  type: long[]
  inputBinding:
    prefix: --afterRegionStartLength
- id: in_plot_output
  doc: "File name to save the intermediate heatmap. The file\nending will be used\
    \ to determine the format of the\nimage . Available formats are: \"png\", \"eps\"\
    , \"pdf\" and\n\"svg\" (From deeptools doc) (default: None)"
  type: File
  inputBinding:
    prefix: --plotOutput
- id: in_config
  doc: "Added to the default configuration, overwrites if\nnecessary. (default: None)\n"
  type: string
  inputBinding:
    prefix: --config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- computeOrderedMatrix
