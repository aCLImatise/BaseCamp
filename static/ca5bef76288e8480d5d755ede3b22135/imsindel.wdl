version 1.0

task Imsindel {
  input {
    Boolean? bam
    File? out_d
    Int? in_del_size
    Boolean? re_ffa
    Boolean? gl_search
    Boolean? sam_tools
    File? output_consensus_seq
    Boolean? exclude_region
  }
  command <<<
    imsindel \
      ~{if (bam) then "--bam" else ""} \
      ~{if defined(out_d) then ("--outd " +  '"' + out_d + '"') else ""} \
      ~{if defined(in_del_size) then ("--indelsize " +  '"' + in_del_size + '"') else ""} \
      ~{if (re_ffa) then "--reffa" else ""} \
      ~{if (gl_search) then "--glsearch" else ""} \
      ~{if (sam_tools) then "--samtools" else ""} \
      ~{if (output_consensus_seq) then "--output-consensus-seq" else ""} \
      ~{if (exclude_region) then "--exclude-region" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "/path/to/foo.bam"
    out_d: "/path/to/outoput-dir"
    in_del_size: "indel-size"
    re_ffa: "/path/to/ref.fa"
    gl_search: "[glsearch36]"
    sam_tools: "[samtools]"
    output_consensus_seq: "/path/to/output-dir"
    exclude_region: "/path/to/exclude-list"
  }
  output {
    File out_stdout = stdout()
    File out_output_consensus_seq = "${in_output_consensus_seq}"
  }
}