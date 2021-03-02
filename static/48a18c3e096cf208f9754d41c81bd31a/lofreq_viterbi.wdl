version 1.0

task LofreqViterbi {
  input {
    File? ref
    Boolean? keep_flags
    Int? def_qual
    File? out
    Boolean? verbose
    String in_dot_bam
  }
  command <<<
    lofreq viterbi \
      ~{in_dot_bam} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if (keep_flags) then "--keepflags" else ""} \
      ~{if defined(def_qual) then ("--defqual " +  '"' + def_qual + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref: "Indexed reference fasta file [null]"
    keep_flags: "Don't delete flags MC, MD, NM and A, which are all prone to change during realignment."
    def_qual: "Assume INT as quality for all bases with BQ2. Default (=-1) is to use median quality of bases in read."
    out: "Output BAM file [- = stdout = default]"
    verbose: "Be verbose"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}