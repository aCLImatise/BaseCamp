version 1.0

task MerTrim {
  input {
    String? input_reads
    String? output_reads
    String? truth_reads_validation
    Int? mer_size
    String? kmer_database_in
    Boolean? enable_cache
    String? coverage
    String? evidence
    String? screen_adapter_sequences
    Boolean? mc_illumina
    Boolean? mc_four_five_four
    Boolean? end_trim
    Boolean? not_rimming
    Boolean? discard_zero
    Boolean? discard_imperfect
    Boolean? not_rim_imperfect
    Int? end_trim_qv
    Boolean? nm
    Boolean? ni
    String? use_t_cpu
    Boolean? report_progress_stderr
    Boolean? report_trimming_evidence
  }
  command <<<
    merTrim \
      ~{if defined(input_reads) then ("-F " +  '"' + input_reads + '"') else ""} \
      ~{if defined(output_reads) then ("-o " +  '"' + output_reads + '"') else ""} \
      ~{if defined(truth_reads_validation) then ("-T " +  '"' + truth_reads_validation + '"') else ""} \
      ~{if defined(mer_size) then ("-m " +  '"' + mer_size + '"') else ""} \
      ~{if defined(kmer_database_in) then ("-mc " +  '"' + kmer_database_in + '"') else ""} \
      ~{if (enable_cache) then "-enablecache" else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(evidence) then ("-evidence " +  '"' + evidence + '"') else ""} \
      ~{if defined(screen_adapter_sequences) then ("-mC " +  '"' + screen_adapter_sequences + '"') else ""} \
      ~{if (mc_illumina) then "-mCillumina" else ""} \
      ~{if (mc_four_five_four) then "-mC454" else ""} \
      ~{if (end_trim) then "-endtrim" else ""} \
      ~{if (not_rimming) then "-notrimming" else ""} \
      ~{if (discard_zero) then "-discardzero" else ""} \
      ~{if (discard_imperfect) then "-discardimperfect" else ""} \
      ~{if (not_rim_imperfect) then "-notrimimperfect" else ""} \
      ~{if defined(end_trim_qv) then ("-endtrimqv " +  '"' + end_trim_qv + '"') else ""} \
      ~{if (nm) then "-NM" else ""} \
      ~{if (ni) then "-NI" else ""} \
      ~{if defined(use_t_cpu) then ("-t " +  '"' + use_t_cpu + '"') else ""} \
      ~{if (report_progress_stderr) then "-v" else ""} \
      ~{if (report_trimming_evidence) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_reads: "input reads"
    output_reads: "output reads"
    truth_reads_validation: "truth reads for validation"
    mer_size: "mer size"
    kmer_database_in: "kmer database (in 'counts.mcdat' and 'counts.mcidx')"
    enable_cache: "dump the final kmer data to 'counts.merTrimDB'"
    coverage: "mers with count below n can be changed\\n(that is, count >= n are correct mers)"
    evidence: "mers with count at least n will be used for changes"
    screen_adapter_sequences: "screen for these adapter sequences"
    mc_illumina: "screen for common Illumina adapter sequences"
    mc_four_five_four: "screen for common 454 adapter and linker sequences"
    end_trim: "(undocumented)"
    not_rimming: "do only correction, no trimming"
    discard_zero: "trash the whole read if coverage drops to zero in the middle"
    discard_imperfect: "trash the whole read if coverage isn't perfect"
    not_rim_imperfect: "do NOT trim off ends that make the coverage imperfect"
    end_trim_qv: "trim ends of reads if they are below qv Q (Sanger encoded; default '2')"
    nm: "do NOT correct mismatch errors"
    ni: "do NOT correct indel errors"
    use_t_cpu: "use T CPU cores"
    report_progress_stderr: "report progress to stderr"
    report_trimming_evidence: "report trimming evidence to stdout (more -V -> more reports)"
  }
  output {
    File out_stdout = stdout()
  }
}