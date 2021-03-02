version 1.0

task Gem2sam {
  input {
    File? defaultstdin
    Boolean? expect_single_end_reads
    Boolean? expect_paired_end_reads
    Boolean? quality_format
    File? defaultstdout
    Boolean? sequence_lengths
    Int? read_group
    String? comment
    Boolean? compact
    Boolean? emit_correct_flags
    Int? stranded_ness_from_consensus
    Int? max_memory
    Int? threads
    Boolean? show_license
    Int gem_two_sam
    String with
  }
  command <<<
    gem_2_sam \
      ~{gem_two_sam} \
      ~{with} \
      ~{if defined(defaultstdin) then ("--input " +  '"' + defaultstdin + '"') else ""} \
      ~{if (expect_single_end_reads) then "--expect-single-end-reads" else ""} \
      ~{if (expect_paired_end_reads) then "--expect-paired-end-reads" else ""} \
      ~{if (quality_format) then "--quality-format" else ""} \
      ~{if defined(defaultstdout) then ("--output " +  '"' + defaultstdout + '"') else ""} \
      ~{if (sequence_lengths) then "--sequence-lengths" else ""} \
      ~{if defined(read_group) then ("--read-group " +  '"' + read_group + '"') else ""} \
      ~{if defined(comment) then ("--comment " +  '"' + comment + '"') else ""} \
      ~{if (compact) then "--compact" else ""} \
      ~{if (emit_correct_flags) then "--emit-correct-flags" else ""} \
      ~{if defined(stranded_ness_from_consensus) then ("--strandedness-from-consensus " +  '"' + stranded_ness_from_consensus + '"') else ""} \
      ~{if defined(max_memory) then ("--max-memory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (show_license) then "--show-license" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gem2:20200110--0"
  }
  parameter_meta {
    defaultstdin: "(default=stdin)"
    expect_single_end_reads: "(override automatic SE/PE detection)"
    expect_paired_end_reads: "(override automatic SE/PE detection)"
    quality_format: "'offset-33'|'offset-64'\\n(mandatory when qualities are present)"
    defaultstdout: "(default=stdout)"
    sequence_lengths: "(add sequence lengths to SAM header.\\nRequires option -I)"
    read_group: ", ...      (specify the RG of the reads)"
    comment: "(add a comment to SAM header)"
    compact: "(lump all alignments on the same line,\\ndefault=false)"
    emit_correct_flags: "(emit correct flags for unpaired reads\\nwhen any fragment has no primary alignment;\\nbreaks compliance with PICARD tests)"
    stranded_ness_from_consensus: ", ... ,<couple_s>\\nwith <couple> := <donor_consensus>+<acceptor_consensus>\\n(list of couples of donor/acceptor\\nsplice site consensus sequences,\\ndefault=GT+AG.\\nRequires option -I)"
    max_memory: "(default=1000000000)"
    threads: "(default=1)"
    show_license: "(show license and exit)"
    gem_two_sam: "-I|--index <file>                (mandatory with options -l or -s)"
    with: "<field> := <name> '=' <value>\\n<name>  := 'ID' | 'CN' | 'DS' | 'DT' | 'FO' | 'KS'\\n'LB' | 'PG' | 'PI' | 'PL' | 'PU' | 'SM'\\n(ID and SM must not be empty,\\ndefault: ID='0',        PG='GEM',\\nPL='ILLUMINA', SM='0')\\n<value> := <string>     (see SAM specification; no check performed!)"
  }
  output {
    File out_stdout = stdout()
  }
}