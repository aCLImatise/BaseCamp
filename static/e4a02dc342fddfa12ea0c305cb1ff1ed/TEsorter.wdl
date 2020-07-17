version 1.0

task TEsorter {
  input {
    String? hmm_database
    String? seq_type
    String? prefix
    Boolean? force_write_hmms_can
    String? processors
    String? tmp_dir
    Int? min_coverage
    Int? max_evalue
    Boolean? disable_pass_two
    String? pass_two_rule
    Boolean? no_library
    Boolean? no_reverse
    Boolean? no_cleanup
    String sequence
  }
  command <<<
    TEsorter \
      ~{sequence} \
      ~{if defined(hmm_database) then ("--hmm-database " +  '"' + hmm_database + '"') else ""} \
      ~{if defined(seq_type) then ("--seq-type " +  '"' + seq_type + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--force-write-hmmscan" false="" force_write_hmms_can} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(max_evalue) then ("--max-evalue " +  '"' + max_evalue + '"') else ""} \
      ~{true="--disable-pass2" false="" disable_pass_two} \
      ~{if defined(pass_two_rule) then ("--pass2-rule " +  '"' + pass_two_rule + '"') else ""} \
      ~{true="--no-library" false="" no_library} \
      ~{true="--no-reverse" false="" no_reverse} \
      ~{true="--no-cleanup" false="" no_cleanup}
  >>>
  parameter_meta {
    hmm_database: "the database used [default=rexdb]"
    seq_type: "'nucl' for DNA or 'prot' for protein [default=nucl]"
    prefix: "output prefix [default='{-s}.{-db}']"
    force_write_hmms_can: "if False, will use the existed hmmscan outfile and skip hmmscan [default=False]"
    processors: "processors to use [default=4]"
    tmp_dir: "directory for temporary files [default=./tmp]"
    min_coverage: "mininum coverage for protein domains in HMMScan output [default=20]"
    max_evalue: "maxinum E-value for protein domains in HMMScan output [default=0.001]"
    disable_pass_two: "do not further classify the unclassified sequences [default=False for `nucl`, True for `prot`]"
    pass_two_rule: "classifying rule [identity-coverage-length] in pass-2 based on similarity [default=80-80-80]"
    no_library: "do not generate a library file for RepeatMasker [default=False]"
    no_reverse: "do not reverse complement sequences if they are detected in minus strand [default=False]"
    no_cleanup: "do not clean up the temporary directory [default=False]"
    sequence: "input TE sequences in fasta format [required]"
  }
}