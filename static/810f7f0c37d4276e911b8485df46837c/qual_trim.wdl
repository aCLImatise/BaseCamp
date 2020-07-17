version 1.0

task QualTrim.py {
  input {
    String? asciiencoded_quality_offset
    String? error_probability_cutoff
    String? quality_score_cutoff
    String? minimum_read_length
    Boolean? illumina_five
    Boolean? solexa
    String fast_q
  }
  command <<<
    qual_trim.py \
      ~{fast_q} \
      ~{if defined(asciiencoded_quality_offset) then ("-b " +  '"' + asciiencoded_quality_offset + '"') else ""} \
      ~{if defined(error_probability_cutoff) then ("-p " +  '"' + error_probability_cutoff + '"') else ""} \
      ~{if defined(quality_score_cutoff) then ("-q " +  '"' + quality_score_cutoff + '"') else ""} \
      ~{if defined(minimum_read_length) then ("-l " +  '"' + minimum_read_length + '"') else ""} \
      ~{true="--illumina5" false="" illumina_five} \
      ~{true="--solexa" false="" solexa}
  >>>
  parameter_meta {
    asciiencoded_quality_offset: "ASCII-encoded quality offset, e.g. 33 or 64 (default: 33)"
    error_probability_cutoff: "error probability cutoff (default: 0.1)"
    quality_score_cutoff: "quality score cutoff (default: '-p 0.1')"
    minimum_read_length: "minimum read length in bp (default: 16)"
    illumina_five: "Illumina 1.5+ encoding marked with 'B'"
    solexa: "Solexa encoding"
    fast_q: "including stdin or compressed file {zip,gz,tar,bz}"
  }
}