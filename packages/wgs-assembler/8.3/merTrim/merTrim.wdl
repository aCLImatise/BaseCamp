version 1.0

task MerTrim {
  input {
    Int? input_readso_readsfastq
  }
  command <<<
    merTrim \
      ~{if defined(input_readso_readsfastq) then ("-F " +  '"' + input_readso_readsfastq + '"') else ""}
  >>>
  parameter_meta {
    input_readso_readsfastq: "input reads\\n-o reads.fastq       output reads\\n-T reads.fasta       truth reads for validation\\n-m ms                mer size\\n-mc counts           kmer database (in 'counts.mcdat' and 'counts.mcidx')\\n-enablecache         dump the final kmer data to 'counts.merTrimDB'\\n-coverage C\\n-correct n           mers with count below n can be changed\\n(that is, count >= n are correct mers)\\n-evidence n          mers with count at least n will be used for changes\\n-mC adapter.fasta    screen for these adapter sequences\\n-mCillumina          screen for common Illumina adapter sequences\\n-mC454               screen for common 454 adapter and linker sequences\\n-endtrim             (undocumented)\\n-notrimming          do only correction, no trimming\\n-discardzero         trash the whole read if coverage drops to zero in the middle\\n-discardimperfect    trash the whole read if coverage isn't perfect\\n-notrimimperfect     do NOT trim off ends that make the coverage imperfect\\n-endtrimqv Q         trim ends of reads if they are below qv Q (Sanger encoded; default '2')\\n-NM                  do NOT correct mismatch errors\\n-NI                  do NOT correct indel errors\\n-t T                 use T CPU cores\\n-v                   report progress to stderr\\n-V                   report trimming evidence to stdout (more -V -> more reports)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}