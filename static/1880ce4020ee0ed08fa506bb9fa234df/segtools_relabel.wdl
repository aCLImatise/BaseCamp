version 1.0

task SegtoolsRelabel {
  input {
    Boolean? quiet
    File? outfile
    String segmentation
    String mnemonic_file
  }
  command <<<
    segtools-relabel \
      ~{segmentation} \
      ~{mnemonic_file} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not print diagnostic messages."
    outfile: "Save relabeled bed file to FILE instead of printing to stdout (default)"
    segmentation: ""
    mnemonic_file: ""
  }
}