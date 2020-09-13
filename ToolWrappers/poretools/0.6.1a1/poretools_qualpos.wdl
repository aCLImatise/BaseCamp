version 1.0

task PoretoolsQualpos {
  input {
    Boolean? quiet
    Int? min_length
    Int? max_length
    Int? bin_width
    Int? type
    String? start
    String? end
    Boolean? high_quality
    String files
    String template_dot
  }
  command <<<
    poretools qualpos \
      ~{files} \
      ~{template_dot} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if defined(bin_width) then ("--bin-width " +  '"' + bin_width + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if (high_quality) then "--high-quality" else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    min_length: "Minimum read length to be included in analysis."
    max_length: "Maximum read length to be included in analysis."
    bin_width: "The width of bins (default: 1000 bp)."
    type: "Which type of reads should be analyzed? Def.=all,\\nchoices=[all, fwd, rev, 2D, fwd,rev, best]"
    start: "Only analyze reads from after start timestamp"
    end: "Only analyze reads from before end timestamp"
    high_quality: "Only analyze reads with more complement events than"
    files: "The input FAST5 files."
    template_dot: "--saveas STRING       Save the plot to a file named filename.extension (e.g."
  }
  output {
    File out_stdout = stdout()
  }
}