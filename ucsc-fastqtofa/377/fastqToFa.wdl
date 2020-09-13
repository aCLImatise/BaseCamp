version 1.0

task FastqToFa {
  input {
    Boolean? name_verify
    File? qual
    File? qual_sizes
    Boolean? no_errors
    Boolean? solexa
    Int? verbose
    String in_dot_fast_q
  }
  command <<<
    fastqToFa \
      ~{in_dot_fast_q} \
      ~{if (name_verify) then "-nameVerify" else ""} \
      ~{if defined(qual) then ("-qual " +  '"' + qual + '"') else ""} \
      ~{if defined(qual_sizes) then ("-qualSizes " +  '"' + qual_sizes + '"') else ""} \
      ~{if (no_errors) then "-noErrors" else ""} \
      ~{if (solexa) then "-solexa" else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    name_verify: "='string' - for multi-line fastq files, 'string' must\\nmatch somewhere in the sequence names in order to correctly\\nidentify the next sequence block (e.g.: -nameVerify='Supercontig_')"
    qual: "- output quality scores to specifed file\\n(default: quality scores are ignored)"
    qual_sizes: "- write sizes file for the quality scores"
    no_errors: "- warn only on problems, do not error out\\n(specify -verbose=3 to see warnings"
    solexa: "- use Solexa/Illumina quality score algorithm\\n(instead of Phread quality)"
    verbose: "- set warning level to get some stats output during processing"
    in_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
    File out_qual = "${in_qual}"
  }
}