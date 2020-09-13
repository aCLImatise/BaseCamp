version 1.0

task Segtoolshtmlreport {
  input {
    Boolean? clobber
    Boolean? quiet
    File? mnemonic_file
    File? layered_bed
    File? big_bed
    Directory? results_dir
    File? outfile
    String segmentation
  }
  command <<<
    segtools_html_report \
      ~{segmentation} \
      ~{if (clobber) then "--clobber" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(layered_bed) then ("--layered-bed " +  '"' + layered_bed + '"') else ""} \
      ~{if defined(big_bed) then ("--big-bed " +  '"' + big_bed + '"') else ""} \
      ~{if defined(results_dir) then ("--results-dir " +  '"' + results_dir + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    mnemonic_file: "If specified, this mnemonic mapping will be included\\nin the report (this should be the same mnemonic file\\nused by the individual modules)."
    layered_bed: "If specified, this layered BED file will be linked\\ninto the the HTML document (assumed to be the same\\ndata as in SEGMENTATION)"
    big_bed: "If specified, this bigBed file will be linked into the\\nthe HTML document and a UCSC genome brower link will\\nbe generated for it (assumed to be the same data as in\\nSEGMENTATION)"
    results_dir: "This should be the directory containing all the module\\noutput directories (`ls` should return things like\\n\\\"length_distribution/\\\", etc) [default: .]"
    outfile: "HTML report file (must be in current directory or the\\nlinks will break [default: index.html]\\n"
    segmentation: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_results_dir = "${in_results_dir}"
  }
}