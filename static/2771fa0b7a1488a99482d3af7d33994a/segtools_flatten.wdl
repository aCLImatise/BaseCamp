version 1.0

task Segtoolsflatten {
  input {
    Boolean? quiet
    File? mnemonic_file
    File? outfile
    Int? filter
    String segmentation_dot_dot_dot
  }
  command <<<
    segtools_flatten \
      ~{segmentation_dot_dot_dot} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not print diagnostic messages."
    mnemonic_file: "Save mapping information to FILE instead of\\nflat.mnemonics (default). This file complies with the\\nmnemonic file format."
    outfile: "Save flattened bed file to FILE instead of printing to\\nstdout (default)"
    filter: "Don't output new segment labels (and corresponding\\nsegments) that span less than F*N bases, where N is\\nthe number of bases covered by the new segmentation.\\nThis can be used to remove extremely uncommon labels\\n(e.g. F = 0.01) that are the more likely to be\\nspurious. Filtering is off by default.\\n"
    segmentation_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}