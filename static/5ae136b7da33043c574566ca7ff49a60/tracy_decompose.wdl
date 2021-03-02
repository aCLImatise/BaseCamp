version 1.0

task TracyDecompose {
  input {
    Boolean? arg_gzipped_fasta
    Boolean? arg_peak_ratio
    Boolean? arg_kmer_size
    Boolean? arg_min_kmer
    Boolean? arg_max_indel
    Boolean? arg_annotate_variants
    Boolean? call_variants_trace
    Boolean? arg_gap_open
    Boolean? arg_gap_extension
    Boolean? _arg_match
    Boolean? _arg_mismatch
    Boolean? _usetrimleft_trimright
    Boolean? arg_trim_size_left
    Boolean? arg_trim_size_right
    Boolean? arg_alignment_line
    Boolean? arg_output_prefix
    Int trace_do_tab_one
  }
  command <<<
    tracy decompose \
      ~{trace_do_tab_one} \
      ~{if (arg_gzipped_fasta) then "-r" else ""} \
      ~{if (arg_peak_ratio) then "-p" else ""} \
      ~{if (arg_kmer_size) then "-k" else ""} \
      ~{if (arg_min_kmer) then "-s" else ""} \
      ~{if (arg_max_indel) then "-i" else ""} \
      ~{if (arg_annotate_variants) then "-a" else ""} \
      ~{if (call_variants_trace) then "-v" else ""} \
      ~{if (arg_gap_open) then "-g" else ""} \
      ~{if (arg_gap_extension) then "-e" else ""} \
      ~{if (_arg_match) then "-m" else ""} \
      ~{if (_arg_mismatch) then "-n" else ""} \
      ~{if (_usetrimleft_trimright) then "-t" else ""} \
      ~{if (arg_trim_size_left) then "-q" else ""} \
      ~{if (arg_trim_size_right) then "-u" else ""} \
      ~{if (arg_alignment_line) then "-l" else ""} \
      ~{if (arg_output_prefix) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_gzipped_fasta: "[ --genome ] arg                 (gzipped) fasta or wildtype ab1 file"
    arg_peak_ratio: "[ --pratio ] arg (=0.330000013)  peak ratio to call base"
    arg_kmer_size: "[ --kmer ] arg (=15)             kmer size"
    arg_min_kmer: "[ --support ] arg (=3)           min. kmer support"
    arg_max_indel: "[ --maxindel ] arg (=1000)       max. indel size in Sanger trace"
    arg_annotate_variants: "[ --annotate ] arg               annotate variants [homo_sapiens|homo_sapi\\nens_hg19|mus_musculus|danio_rerio|...]"
    call_variants_trace: "[ --callVariants ]               call variants in trace"
    arg_gap_open: "[ --gapopen ] arg (=-10)         gap open"
    arg_gap_extension: "[ --gapext ] arg (=-4)           gap extension"
    _arg_match: "[ --match ] arg (=3)             match"
    _arg_mismatch: "[ --mismatch ] arg (=-5)         mismatch"
    _usetrimleft_trimright: "[ --trim ] arg (=0)              trimming stringency [1:9], 0: use\\ntrimLeft and trimRight"
    arg_trim_size_left: "[ --trimLeft ] arg (=50)         trim size left"
    arg_trim_size_right: "[ --trimRight ] arg (=50)        trim size right"
    arg_alignment_line: "[ --linelimit ] arg (=60)        alignment line length"
    arg_output_prefix: "[ --outprefix ] arg (=out)       output prefix"
    trace_do_tab_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}