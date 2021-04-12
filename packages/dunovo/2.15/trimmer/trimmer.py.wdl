version 1.0

task Trimmerpy {
  input {
    String? format
    String? out_format
    String? filt_bases
    Float? th_res
    Int? window
    Boolean? invert
    Int? min_length
    String? error
    Boolean? acgt
    Boolean? iupac
    Boolean? quiet
    Boolean? tsv
  }
  command <<<
    trimmer_py \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if defined(filt_bases) then ("--filt-bases " +  '"' + filt_bases + '"') else ""} \
      ~{if defined(th_res) then ("--thres " +  '"' + th_res + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(error) then ("--error " +  '"' + error + '"') else ""} \
      ~{if (acgt) then "--acgt" else ""} \
      ~{if (iupac) then "--iupac" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (tsv) then "--tsv" else ""}
  >>>
  parameter_meta {
    format: "Input read format."
    out_format: "Output read format. Default: whatever the input format\\nis."
    filt_bases: "The bases to filter on. Case-insensitive. Default: N."
    th_res: "The threshold. The read will be trimmed once the\\nproportion of filter bases in the window exceed this\\nfraction (not a percentage). Default: 0.5."
    window: "Window size for trimming. Default: 1."
    invert: "Invert the filter bases: filter on bases NOT present\\nin the --filt-bases."
    min_length: "Set a minimum read length. Reads which are trimmed\\nbelow this length will be filtered out (omitted\\nentirely from the output). Read pairs will be\\npreserved: both reads in a pair must exceed this\\nlength to be kept. Set to 0 to only omit empty reads."
    error: "Fail with this error message (useful for Galaxy tool)."
    acgt: "Filter on any non-ACGT base (shortcut for \\\"--invert"
    iupac: "Filter on any non-IUPAC base (shortcut for \\\"--invert"
    quiet: "Don't print trimming stats on completion."
    tsv: ""
  }
  output {
    File out_stdout = stdout()
  }
}