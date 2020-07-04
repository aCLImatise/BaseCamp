version 1.0

task TracyDecompose {
  input {
    Boolean? arg_gzipped_fasta
    Boolean? arg_peak_ratio
    Boolean? arg_kmer_size
    Boolean? arg_min_kmer
    Boolean? arg_max_indel
    Boolean? a
    Boolean? call_variants_trace
    Boolean? arg_gap_open
    Boolean? arg_gap_extension
    Boolean? _arg_match
    Boolean? _arg_mismatch
    Boolean? use_trimleft_trimright
    Boolean? arg_trim_size_left
    Boolean? arg_trim_size_right
    Boolean? arg_alignment_line
    Boolean? arg_output_prefix
    String trace_do_tab_one
  }
  command <<<
    tracy decompose \
      ~{trace_do_tab_one} \
      ~{true="-r" false="" arg_gzipped_fasta} \
      ~{true="-p" false="" arg_peak_ratio} \
      ~{true="-k" false="" arg_kmer_size} \
      ~{true="-s" false="" arg_min_kmer} \
      ~{true="-i" false="" arg_max_indel} \
      ~{true="-a" false="" a} \
      ~{true="-v" false="" call_variants_trace} \
      ~{true="-g" false="" arg_gap_open} \
      ~{true="-e" false="" arg_gap_extension} \
      ~{true="-m" false="" _arg_match} \
      ~{true="-n" false="" _arg_mismatch} \
      ~{true="-t" false="" use_trimleft_trimright} \
      ~{true="-q" false="" arg_trim_size_left} \
      ~{true="-u" false="" arg_trim_size_right} \
      ~{true="-l" false="" arg_alignment_line} \
      ~{true="-o" false="" arg_output_prefix}
  >>>
  parameter_meta {
    arg_gzipped_fasta: "[ --genome ] arg                 (gzipped) fasta or wildtype ab1 file"
    arg_peak_ratio: "[ --pratio ] arg (=0.330000013)  peak ratio to call base"
    arg_kmer_size: "[ --kmer ] arg (=15)             kmer size"
    arg_min_kmer: "[ --support ] arg (=3)           min. kmer support"
    arg_max_indel: "[ --maxindel ] arg (=1000)       max. indel size in Sanger trace"
    a: "[ --annotate ] arg               annotate variants [homo_sapiens|homo_sapi ens_hg19|mus_musculus|danio_rerio|...]"
    call_variants_trace: "[ --callVariants ]               call variants in trace"
    arg_gap_open: "[ --gapopen ] arg (=-10)         gap open"
    arg_gap_extension: "[ --gapext ] arg (=-4)           gap extension"
    _arg_match: "[ --match ] arg (=3)             match"
    _arg_mismatch: "[ --mismatch ] arg (=-5)         mismatch"
    use_trimleft_trimright: "[ --trim ] arg (=0)              trimming stringency [1:9], 0: use  trimLeft and trimRight"
    arg_trim_size_left: "[ --trimLeft ] arg (=50)         trim size left"
    arg_trim_size_right: "[ --trimRight ] arg (=50)        trim size right"
    arg_alignment_line: "[ --linelimit ] arg (=60)        alignment line length"
    arg_output_prefix: "[ --outprefix ] arg (=out)       output prefix"
    trace_do_tab_one: ""
  }
}