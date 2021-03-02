version 1.0

task AdptSim {
  input {
    Boolean? arts
    Boolean? art_p
    Boolean? fr
    Boolean? rr
    Boolean? bs
    Boolean? bp
    Boolean? produce_uncompressed_bam
    Boolean? adapter_observed_forward
    Boolean? adapter_observed_reverse
    Boolean? desired_read_length
    Boolean? name
    Boolean? append_string_default
    String append
    String var_13
    String and
    Int? length
    String or
    String? seq
    String splits
    String? var_19
    String adapter
    String bam
    String desired
    String program
    String the
    String them
    String into
    String reads
    String second
    String tags
    String that
    String var_31
    String a
    String is
    String single
    String var_string
    String two
    String fast_a
    String for
    String observed
    String records
    String to
    String after
    String def_lines
    File var_file
    String reverse
    String single_end
    String containing
    String var_if
    String mode
    String read
    String a_dna
    String adapters
    String forward
    String are
    String fragments
    String added
  }
  command <<<
    adptSim \
      ~{append} \
      ~{var_13} \
      ~{and} \
      ~{length} \
      ~{or} \
      ~{seq} \
      ~{splits} \
      ~{var_19} \
      ~{adapter} \
      ~{bam} \
      ~{desired} \
      ~{program} \
      ~{the} \
      ~{them} \
      ~{into} \
      ~{reads} \
      ~{second} \
      ~{tags} \
      ~{that} \
      ~{var_31} \
      ~{a} \
      ~{is} \
      ~{single} \
      ~{var_string} \
      ~{two} \
      ~{fast_a} \
      ~{for} \
      ~{observed} \
      ~{records} \
      ~{to} \
      ~{after} \
      ~{def_lines} \
      ~{var_file} \
      ~{reverse} \
      ~{single_end} \
      ~{containing} \
      ~{var_if} \
      ~{mode} \
      ~{read} \
      ~{a_dna} \
      ~{adapters} \
      ~{forward} \
      ~{are} \
      ~{fragments} \
      ~{added} \
      ~{if (arts) then "-arts" else ""} \
      ~{if (art_p) then "-artp" else ""} \
      ~{if (fr) then "-fr" else ""} \
      ~{if (rr) then "-rr" else ""} \
      ~{if (bs) then "-bs" else ""} \
      ~{if (bp) then "-bp" else ""} \
      ~{if (produce_uncompressed_bam) then "-u" else ""} \
      ~{if (adapter_observed_forward) then "-f" else ""} \
      ~{if (adapter_observed_reverse) then "-s" else ""} \
      ~{if (desired_read_length) then "-l" else ""} \
      ~{if (name) then "-name" else ""} \
      ~{if (append_string_default) then "-tag" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gargammel-slim:1.1.2--h68ad25a_0"
  }
  parameter_meta {
    arts: "[out]           Output single-end reads as ART (unzipped fasta) (Default: /dev/null)"
    art_p: "[out]           Output reads as ART (unzipped fasta) (Default: /dev/null)\\nwith wrap-around for paired-end mode"
    fr: "[out fwdr]      Output forward read as zipped fasta (Default: )"
    rr: "[out rwdr]      Output reverse read as zipped fasta (Default: /dev/null)"
    bs: "[BAM out]       Read BAM and write output as a single-end BAM (Default: fasta)"
    bp: "[BAM out]       Read BAM and write output as a single-end BAM (Default: fasta)"
    produce_uncompressed_bam: "Produce uncompressed BAM (good for unix pipe)"
    adapter_observed_forward: "[seq]                   Adapter that is observed after the forward read (Default:  AGATCGGAAG...)"
    adapter_observed_reverse: "[seq]                   Adapter that is observed after the reverse read (Default:  AGATCGGAAG...)"
    desired_read_length: "[length]                Desired read length  (Default:  100)"
    name: "Append BAM tags or to deflines if adapters are added (Default:  not on/not used)"
    append_string_default: "[tag]                   Append this string to deflines or BAM tags (Default:  not on/not used)"
    append: ""
    var_13: ""
    and: ""
    length: ""
    or: ""
    seq: ""
    splits: ""
    var_19: ""
    adapter: ""
    bam: ""
    desired: ""
    program: ""
    the: ""
    them: ""
    into: ""
    reads: ""
    second: ""
    tags: ""
    that: ""
    var_31: ""
    a: ""
    is: ""
    single: ""
    var_string: ""
    two: ""
    fast_a: ""
    for: ""
    observed: ""
    records: ""
    to: ""
    after: ""
    def_lines: ""
    var_file: ""
    reverse: ""
    single_end: ""
    containing: ""
    var_if: ""
    mode: ""
    read: ""
    a_dna: ""
    adapters: ""
    forward: ""
    are: ""
    fragments: ""
    added: ""
  }
  output {
    File out_stdout = stdout()
  }
}