version 1.0

task RbtVcfreport {
  input {
    Boolean? bams
    Int? cells
    File? custom_js_files
    File? custom_js_template
    String? formats
    String? infos
    Int? max_read_depth
    String? plot_info
    Int? threads
    File? tsv
    Boolean? v_cfs
    String fast_a
  }
  command <<<
    rbt vcf_report \
      ~{fast_a} \
      ~{if (bams) then "--bams" else ""} \
      ~{if defined(cells) then ("--cells " +  '"' + cells + '"') else ""} \
      ~{if defined(custom_js_files) then ("--custom-js-files " +  '"' + custom_js_files + '"') else ""} \
      ~{if defined(custom_js_template) then ("--custom-js-template " +  '"' + custom_js_template + '"') else ""} \
      ~{if defined(formats) then ("--formats " +  '"' + formats + '"') else ""} \
      ~{if defined(infos) then ("--infos " +  '"' + infos + '"') else ""} \
      ~{if defined(max_read_depth) then ("--max-read-depth " +  '"' + max_read_depth + '"') else ""} \
      ~{if defined(plot_info) then ("--plot-info " +  '"' + plot_info + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if (v_cfs) then "--vcfs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.19.5--heda7bfa_0"
  }
  parameter_meta {
    bams: "<GROUP:SAMPLE=BAM_FILE>...\\nVCF files to include (multi-sample). Group is the name that will be used in the oncoprint. There needs to be\\none corresponding BAM file for each sample of a VCF/BCF file. Please only use VCF/BCF files annotated by VEP"
    cells: "Set the maximum number of cells in the oncoprint per page. Lowering max-cells should improve the performance\\nof the plots in the browser. Default value is 1000 [default: 1000]"
    custom_js_files: "...\\nAdd one or multiple js file (e.g. libraries) for usage in the custom-js-file. The ordering of the arguments\\nwill be the same as they will be imported"
    custom_js_template: "Change the default javascript file for the table-report to a custom one to add own plots or tables to the\\nsidebar by appending these to an empty div in the HTML template"
    formats: "...\\nAdd custom values from the format field to each variant as a data attribute to access them via the custom\\njavascript. All given format values will also be inserted into the main table"
    infos: "...\\nAdd custom values from the info field to each variant as a data attribute to access them via the custom\\njavascript. Multiple fields starting with the same prefix can be added by placing '*' at the end of a prefix"
    max_read_depth: "Set the maximum number of cells in the oncoprint per page. Lowering max-cells should improve the performance\\nof the plots in the browser. Default value is 1000 [default: 500]"
    plot_info: "...\\nAdd multiple keys from the info field of your vcf to the plots of the first and second stage of the report"
    threads: "Sets the number of threads used to build the table reports [default: 0]"
    tsv: "Add a TSV file that contains one or multiple custom values for each sample for the oncoprint. First column\\nhas to be the sample name, followed by one or more columns with custom values. Make sure you include one row\\nfor each given sample"
    v_cfs: "<GROUP=VCF_FILE>...\\nVCF files to include (multi-sample). Group is the name that will be used in the oncoprint. There needs to be\\none corresponding BAM file for each sample of a VCF/BCF file. Please only use VCF/BCF files annotated by VEP"
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}