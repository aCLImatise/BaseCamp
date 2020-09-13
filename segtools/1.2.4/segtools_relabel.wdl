version 1.0

task Segtoolsrelabel {
  input {
    Boolean? quiet
    File? outfile
    String segmentation
    String mnemonic_file
  }
  command <<<
    segtools_relabel \
      ~{segmentation} \
      ~{mnemonic_file} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not print diagnostic messages."
    outfile: "Save relabeled bed file to FILE instead of printing to\\nstdout (default)\\n"
    segmentation: ""
    mnemonic_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}