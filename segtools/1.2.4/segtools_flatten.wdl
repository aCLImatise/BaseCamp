version 1.0

task SegtoolsFlatten {
  input {
    Boolean? quiet
    File? mnemonic_file
    File? outfile
    String? filter
    String segmentation_dot_dot_dot
  }
  command <<<
    segtools-flatten \
      ~{segmentation_dot_dot_dot} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not print diagnostic messages."
    mnemonic_file: "Save mapping information to FILE instead of flat.mnemonics (default). This file complies with the mnemonic file format."
    outfile: "Save flattened bed file to FILE instead of printing to stdout (default)"
    filter: "Don't output new segment labels (and corresponding segments) that span less than F*N bases, where N is the number of bases covered by the new segmentation. This can be used to remove extremely uncommon labels (e.g. F = 0.01) that are the more likely to be spurious. Filtering is off by default."
    segmentation_dot_dot_dot: ""
  }
}