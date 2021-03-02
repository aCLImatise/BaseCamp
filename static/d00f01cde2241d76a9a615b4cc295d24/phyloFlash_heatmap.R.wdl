version 1.0

task PhyloFlashHeatmapR {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? debug
    Int? min_ntu_count
    Boolean? no_split
    String? split_regex
    Boolean? long_tax_names
    Boolean? absolute
    String? cluster_samples
    String? cluster_tax_a
    String? rows
    String? cols
    String? colors
    File? out
    String? aa
    Int? out_size
    Boolean? library_name_from_file
    String? custom_distance_matrix_sample
  }
  command <<<
    phyloFlash_heatmap_R \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(min_ntu_count) then ("--min-ntu-count " +  '"' + min_ntu_count + '"') else ""} \
      ~{if (no_split) then "--no-split" else ""} \
      ~{if defined(split_regex) then ("--split-regex " +  '"' + split_regex + '"') else ""} \
      ~{if (long_tax_names) then "--long-taxnames" else ""} \
      ~{if (absolute) then "--absolute" else ""} \
      ~{if defined(cluster_samples) then ("--cluster-samples " +  '"' + cluster_samples + '"') else ""} \
      ~{if defined(cluster_tax_a) then ("--cluster-taxa " +  '"' + cluster_tax_a + '"') else ""} \
      ~{if defined(rows) then ("--rows " +  '"' + rows + '"') else ""} \
      ~{if defined(cols) then ("--cols " +  '"' + cols + '"') else ""} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(aa) then ("--aa " +  '"' + aa + '"') else ""} \
      ~{if defined(out_size) then ("--out-size " +  '"' + out_size + '"') else ""} \
      ~{if (library_name_from_file) then "--library-name-from-file" else ""} \
      ~{if defined(custom_distance_matrix_sample) then ("--custom-distance-matrix-sample " +  '"' + custom_distance_matrix_sample + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyloflash:3.4--0"
  }
  parameter_meta {
    verbose: "Be more talkative"
    quiet: "Be less talkative"
    debug: "Show debug messages"
    min_ntu_count: "Sum NTUs with less counts in pseudo NTU \\\"Other\\\". Default 50."
    no_split: "Do not split heatmap"
    split_regex: "Split heatmap using this regex on taxa. Multiple regex can be\\nspecified comma separated. Default 'Eukaryota'"
    long_tax_names: "Do not shorten taxa names to last two groups"
    absolute: "Do not scale columns to percentages"
    cluster_samples: "Use this method for clustering/sorting samples. Can be:\\nalpha, ward.D, single, complete, average, mcquitty, median, centroid, or custom.\\nDefault is ward.D."
    cluster_tax_a: "Use this method for clustering/sorting taxa. Can be:\\nalpha, ward.D, single, complete, average, mcquitty, median or centroid.\\nDefault is ward.D"
    rows: "Component rows, in order, to render (separated by commas).\\nValid terms are: tree, map, chao and labels.\\nDefault is tree,map,chao,labels."
    cols: "Component columns, in order, to render (separated by commas).\\nValid terms are: labels, map and tree.\\nDefault is labels,map,tree."
    colors: "Colors for heatmaps. Default is steelblue,indianred,green,orange."
    out: "Name of output file. Must end in .png or .pdf. Default is out.png."
    aa: "Type of anti-aliasing to use for PNG output. Can be one of default,\\nnone, gray, or subpixel. Default is gray."
    out_size: "Size of output graphic in pixels (e.g. 100x100). Assumes 72 DPI for\\nPDF. Using \\\"auto\\\" for a dimension will attempt to guess at suitable\\nsize. Default autoXauto"
    library_name_from_file: "Use thee filename to derive library name instead of parsing ...report.csv"
    custom_distance_matrix_sample: "Import custom distance matrix for samples instead of calculating\\nfrom abundance matrix"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}