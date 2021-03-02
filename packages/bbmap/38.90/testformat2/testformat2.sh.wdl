version 1.0

task Testformat2sh {
  input {
    Boolean? junk_reads
    Boolean? chastity_fail
    Boolean? bad_pair_names
    Boolean? lowercase
    Boolean? uppercase
    Boolean? non_letter
    Boolean? fully_defined
    Boolean? no_call
    Boolean? degenerate
    Boolean? gap
    Boolean? invalid
    Boolean? insert_mean
    Boolean? insert_mode
    Boolean? adapter_reads
    Boolean? adapter_bases
    Boolean? q_avg_log
    Boolean? q_avg_linear
    Boolean? trimmed_at_q_five
    Boolean? trimmed_at_q_one_zero
    Boolean? trimmed_at_q_one_five
    Boolean? trimmed_at_q_two_zero
    File var_file
  }
  command <<<
    testformat2_sh \
      ~{var_file} \
      ~{if (junk_reads) then "-JunkReads" else ""} \
      ~{if (chastity_fail) then "-ChastityFail" else ""} \
      ~{if (bad_pair_names) then "-BadPairNames" else ""} \
      ~{if (lowercase) then "-Lowercase" else ""} \
      ~{if (uppercase) then "-Uppercase" else ""} \
      ~{if (non_letter) then "-Non-Letter" else ""} \
      ~{if (fully_defined) then "-FullyDefined" else ""} \
      ~{if (no_call) then "-No-call" else ""} \
      ~{if (degenerate) then "-Degenerate" else ""} \
      ~{if (gap) then "-Gap" else ""} \
      ~{if (invalid) then "-Invalid" else ""} \
      ~{if (insert_mean) then "-InsertMean" else ""} \
      ~{if (insert_mode) then "-InsertMode" else ""} \
      ~{if (adapter_reads) then "-AdapterReads" else ""} \
      ~{if (adapter_bases) then "-AdapterBases" else ""} \
      ~{if (q_avg_log) then "-QAvgLog" else ""} \
      ~{if (q_avg_linear) then "-QAvgLinear" else ""} \
      ~{if (trimmed_at_q_five) then "-TrimmedAtQ5" else ""} \
      ~{if (trimmed_at_q_one_zero) then "-TrimmedAtQ10" else ""} \
      ~{if (trimmed_at_q_one_five) then "-TrimmedAtQ15" else ""} \
      ~{if (trimmed_at_q_two_zero) then "-TrimmedAtQ20" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    junk_reads: "Reads with invalid bases or other problems."
    chastity_fail: "Reads failing Illumina's chastity filter."
    bad_pair_names: "Read pairs whose names don't match."
    lowercase: "Lowercase bases."
    uppercase: "Uppercase bases."
    non_letter: "Non-letter symbols in bases."
    fully_defined: "A, C, G, T, or U bases."
    no_call: "N bases."
    degenerate: "Non-ACGTUN valid IUPAC symbols."
    gap: "- symbol."
    invalid: "Symbols that are not valid characters for sequence."
    insert_mean: "Average insert size, from merging."
    insert_mode: "Insert size mode from, merging."
    adapter_reads: "Fraction of reads with adapter sequence, from merging."
    adapter_bases: "Fraction of bases that are adapter sequence, from merging."
    q_avg_log: "Logarithmic average quality score."
    q_avg_linear: "Linear average quality score."
    trimmed_at_q_five: "Fraction of bases trimmed at Q5."
    trimmed_at_q_one_zero: "Fraction of bases trimmed at Q10."
    trimmed_at_q_one_five: "Fraction of bases trimmed at Q15."
    trimmed_at_q_two_zero: "Fraction of bases trimmed at Q20."
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}