version 1.0

task TQSfastqpy {
  input {
    File? fast_q
    Int? phred
    Int? consec
    Int? ascii
    Boolean? verbose
  }
  command <<<
    TQSfastq_py \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(phred) then ("--Phred " +  '"' + phred + '"') else ""} \
      ~{if defined(consec) then ("--consec " +  '"' + consec + '"') else ""} \
      ~{if defined(ascii) then ("--ASCII " +  '"' + ascii + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    fast_q: "=FASTQFILE\\nfastq (fq) file - standard (ASCII+33) encoded PHRED\\nquality scores / illumina (ASCII+64) encoded PHRED\\nquality scores"
    phred: "threshold=THRESHOLD\\nBase intensity threshold value (Phred quality scores,\\ndefault=10)"
    consec: "Minimum number of consecutive bases passing threshold\\nvalues (default=20)"
    ascii: "type: 33 or 64=ENCODING\\nType of ASCII encoding: 33 (standard) or 64 (illumina)\\n(default=33)"
    verbose: "Runs in Verbose mode."
  }
  output {
    File out_stdout = stdout()
  }
}