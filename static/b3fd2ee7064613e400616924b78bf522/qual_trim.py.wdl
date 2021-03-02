version 1.0

task QualTrimpy {
  input {
    Int? asciiencoded_offset_eg
    Float? error_probability_cutoff
    Float? quality_score_cutoff
    Int? minimum_read_length
    Boolean? illumina_five
    Boolean? solexa
  }
  command <<<
    qual_trim_py \
      ~{if defined(asciiencoded_offset_eg) then ("-b " +  '"' + asciiencoded_offset_eg + '"') else ""} \
      ~{if defined(error_probability_cutoff) then ("-p " +  '"' + error_probability_cutoff + '"') else ""} \
      ~{if defined(quality_score_cutoff) then ("-q " +  '"' + quality_score_cutoff + '"') else ""} \
      ~{if defined(minimum_read_length) then ("-l " +  '"' + minimum_read_length + '"') else ""} \
      ~{if (illumina_five) then "--illumina5" else ""} \
      ~{if (solexa) then "--solexa" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    asciiencoded_offset_eg: "ASCII-encoded quality offset, e.g. 33 or 64 (default: 33)"
    error_probability_cutoff: "error probability cutoff (default: 0.1)"
    quality_score_cutoff: "quality score cutoff (default: '-p 0.1')"
    minimum_read_length: "minimum read length in bp (default: 16)"
    illumina_five: "Illumina 1.5+ encoding marked with 'B'"
    solexa: "Solexa encoding"
  }
  output {
    File out_stdout = stdout()
  }
}