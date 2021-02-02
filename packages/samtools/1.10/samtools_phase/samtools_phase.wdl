version 1.0

task SamtoolsPhase {
  input {
    Int? block_length
    String? prefix_bams_output
    Int? min_het_phredlod
    Int? min_base_quality
    Int? max_read_depth
    Boolean? attempt_fix_chimeras
    Boolean? drop_reads_ambiguous
    Boolean? no_pg
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? verbosity
    String in_dot_bam
  }
  command <<<
    samtools phase \
      ~{in_dot_bam} \
      ~{if defined(block_length) then ("-k " +  '"' + block_length + '"') else ""} \
      ~{if defined(prefix_bams_output) then ("-b " +  '"' + prefix_bams_output + '"') else ""} \
      ~{if defined(min_het_phredlod) then ("-q " +  '"' + min_het_phredlod + '"') else ""} \
      ~{if defined(min_base_quality) then ("-Q " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(max_read_depth) then ("-D " +  '"' + max_read_depth + '"') else ""} \
      ~{if (attempt_fix_chimeras) then "-F" else ""} \
      ~{if (drop_reads_ambiguous) then "-A" else ""} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    block_length: "block length [13]"
    prefix_bams_output: "prefix of BAMs to output [null]"
    min_het_phredlod: "min het phred-LOD [37]"
    min_base_quality: "min base quality in het calling [13]"
    max_read_depth: "max read depth [256]"
    attempt_fix_chimeras: "do not attempt to fix chimeras"
    drop_reads_ambiguous: "drop reads with ambiguous phase"
    no_pg: "do not add a PG line"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    verbosity: "Set level of verbosity\\n"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}