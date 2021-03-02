version 1.0

task LofreqIndelqual {
  input {
    Array[Int] uniform
    Boolean? din_del
    Boolean? ref
    File? out
    Boolean? verbose
    String in_dot_bam
  }
  command <<<
    lofreq indelqual \
      ~{in_dot_bam} \
      ~{if defined(uniform) then ("--uniform " +  '"' + uniform + '"') else ""} \
      ~{if (din_del) then "--dindel" else ""} \
      ~{if (ref) then "--ref" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    uniform: "Add this indel quality uniformly to all bases.\\nUse two comma separated values to specify\\ninsertion and deletion quality separately.\\n(clashes with --dindel)"
    din_del: "Add Dindel's indel qualities (Illumina specific)\\n(clashes with -u; needs --ref)"
    ref: "Reference sequence used for mapping\\n(Only required for --dindel)"
    out: "Output BAM file [- = stdout = default]"
    verbose: "Be verbose"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}