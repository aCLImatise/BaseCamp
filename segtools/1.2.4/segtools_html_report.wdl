version 1.0

task SegtoolsHtmlReport {
  input {
    Boolean? clobber
    Boolean? quiet
    File? mnemonic_file
    File? layered_bed
    File? big_bed
    String? results_dir
    File? outfile
    String segmentation
  }
  command <<<
    segtools-html-report \
      ~{segmentation} \
      ~{true="--clobber" false="" clobber} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(layered_bed) then ("--layered-bed " +  '"' + layered_bed + '"') else ""} \
      ~{if defined(big_bed) then ("--big-bed " +  '"' + big_bed + '"') else ""} \
      ~{if defined(results_dir) then ("--results-dir " +  '"' + results_dir + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    clobber: "Overwrite any existing output files."
    quiet: "Do not print diagnostic messages."
    mnemonic_file: "If specified, this mnemonic mapping will be included in the report (this should be the same mnemonic file used by the individual modules)."
    layered_bed: "If specified, this layered BED file will be linked into the the HTML document (assumed to be the same data as in SEGMENTATION)"
    big_bed: "If specified, this bigBed file will be linked into the the HTML document and a UCSC genome brower link will be generated for it (assumed to be the same data as in SEGMENTATION)"
    results_dir: "This should be the directory containing all the module output directories (`ls` should return things like \"length_distribution/\", etc) [default: .]"
    outfile: "HTML report file (must be in current directory or the links will break [default: index.html]"
    segmentation: ""
  }
}