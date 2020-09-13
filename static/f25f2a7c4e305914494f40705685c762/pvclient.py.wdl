version 1.0

task Pvclientpy {
  input {
    File? ct
    Int? structures
    File? shape
    File? diff
    Int? range
    File? out
    File? title
    Boolean? no_title
  }
  command <<<
    pvclient_py \
      ~{if defined(ct) then ("--ct " +  '"' + ct + '"') else ""} \
      ~{if defined(structures) then ("--structures " +  '"' + structures + '"') else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(diff) then ("--diff " +  '"' + diff + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (no_title) then "--no_title" else ""}
  >>>
  parameter_meta {
    ct: "Required file containing 1 or more secondary structures in connect-table format"
    structures: "Number of structures in .ct file to render (default: 1)"
    shape: "Color nucleotides by reactivity. Red >= 0.85, orange >= 0.4, black < 0.4, gray <-998.5"
    diff: "[<upperColor> <lowerColor> <upperThreshold> <lowerThreshold>]\\nColor nucleotides by differential reactivity. Optionally specify the positive and\\nnegative thresholds and colors (default: green blue 0.5 -0.5)"
    range: "<endNumber> <color>\\nColor nucleotides in range (inclusive) given color.\\nMultiple ranges and colors may be specified - see example above"
    out: "Write files to the location specified.  The structure number will be appended to\\nthe end of the filename. New folders will not be created. (default: \\\"structure_\\\")"
    title: "Write the given string to each postscript image in the upper-left corner instead of\\nthe name pulled from the .ct file"
    no_title: "Do not add any title to the rendered images"
  }
  output {
    File out_stdout = stdout()
  }
}