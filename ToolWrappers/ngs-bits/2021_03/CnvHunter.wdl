version 1.0

task CnvHunter {
  input {
    File? in
    File? out
    Int? number_most_use
    Float? min_z
    Float? ext_min_z
    Float? ext_gap_span
    Float? sam_min_depth
    Float? sam_min_corr
    Int? sam_corr_regs
    Float? reg_min_cov
    Float? reg_min_n_cov
    Float? reg_max_cv
    String? debug
    File? seg
    Int? par
    File? cnp_file
    File? annotate
    Int? gc_window
    Int? gc_extend
    File? ref
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    CnvHunter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(number_most_use) then ("-n " +  '"' + number_most_use + '"') else ""} \
      ~{if defined(min_z) then ("-min_z " +  '"' + min_z + '"') else ""} \
      ~{if defined(ext_min_z) then ("-ext_min_z " +  '"' + ext_min_z + '"') else ""} \
      ~{if defined(ext_gap_span) then ("-ext_gap_span " +  '"' + ext_gap_span + '"') else ""} \
      ~{if defined(sam_min_depth) then ("-sam_min_depth " +  '"' + sam_min_depth + '"') else ""} \
      ~{if defined(sam_min_corr) then ("-sam_min_corr " +  '"' + sam_min_corr + '"') else ""} \
      ~{if defined(sam_corr_regs) then ("-sam_corr_regs " +  '"' + sam_corr_regs + '"') else ""} \
      ~{if defined(reg_min_cov) then ("-reg_min_cov " +  '"' + reg_min_cov + '"') else ""} \
      ~{if defined(reg_min_n_cov) then ("-reg_min_ncov " +  '"' + reg_min_n_cov + '"') else ""} \
      ~{if defined(reg_max_cv) then ("-reg_max_cv " +  '"' + reg_max_cv + '"') else ""} \
      ~{if defined(debug) then ("-debug " +  '"' + debug + '"') else ""} \
      ~{if defined(seg) then ("-seg " +  '"' + seg + '"') else ""} \
      ~{if defined(par) then ("-par " +  '"' + par + '"') else ""} \
      ~{if defined(cnp_file) then ("-cnp_file " +  '"' + cnp_file + '"') else ""} \
      ~{if defined(annotate) then ("-annotate " +  '"' + annotate + '"') else ""} \
      ~{if defined(gc_window) then ("-gc_window " +  '"' + gc_window + '"') else ""} \
      ~{if defined(gc_extend) then ("-gc_extend " +  '"' + gc_extend + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input TSV files (one per sample) containing coverage data (chr, start, end, avg_depth). If only one file is given, each line in this file is interpreted as an input file path."
    out: "Output TSV file containing the detected CNVs."
    number_most_use: "The number of most similar samples to use for reference construction.\\nDefault value: '30'"
    min_z: "Minimum z-score for CNV seed detection.\\nDefault value: '4'"
    ext_min_z: "Minimum z-score for CNV extension around seeds.\\nDefault value: '2'"
    ext_gap_span: "Percentage of orignal region size that can be spanned while merging nearby regions (0 disables it).\\nDefault value: '20'"
    sam_min_depth: "QC: Minimum average depth of a sample.\\nDefault value: '40'"
    sam_min_corr: "QC: Minimum correlation of sample to constructed reference sample.\\nDefault value: '0.95'"
    sam_corr_regs: "Maximum number of regions used for sample correlation calculation (to speed up comparisons for exoms etc.).\\nDefault value: '20000'"
    reg_min_cov: "QC: Minimum (average) absolute depth of a target region.\\nDefault value: '20'"
    reg_min_n_cov: "QC: Minimum (average) normalized depth of a target region.\\nDefault value: '0.01'"
    reg_max_cv: "QC: Maximum coefficient of variation (median/mad) of target region.\\nDefault value: '0.4'"
    debug: "Writes debug information for the sample matching the given name (or for all samples if 'ALL' is given).\\nDefault value: ''"
    seg: "Writes a SEG file for the sample matching the given name (used for visualization in IGV).\\nDefault value: ''"
    par: "Comma-separated list of pseudo-autosomal regions on the X chromosome.\\nDefault value: '1-2699520,154931044-155270560'"
    cnp_file: "BED file containing copy-number-polymorphism (CNP) regions. They are excluded from the normalization/correlation calculation. E.g use the CNV map from http://dx.doi.org/10.1038/nrg3871.\\nDefault value: ''"
    annotate: "List of BED files used for annotation. Each file adds a column to the output file. The base filename is used as colum name and 4th column of the BED file is used as annotation value.\\nDefault value: ''"
    gc_window: "Moving median GC-content normalization window size (disabled by default).\\nDefault value: '-1'"
    gc_extend: "Moving median GC-content normalization extension around target region.\\nDefault value: '0'"
    ref: "Reference genome FASTA file. If unset, 'reference_genome' from the 'settings.ini' file is used.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_annotate = "${in_annotate}"
  }
}