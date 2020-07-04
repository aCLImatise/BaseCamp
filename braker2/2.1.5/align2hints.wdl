version 1.0

task Align2hints.pl {
  input {
    Boolean? skip_alignment_out
    Boolean? in
    Boolean? out
    String? cds_part_cut_off
    String? max_intron_len
    String? min_intron_len
    String? priority
    String? prg
    String? source
    Boolean? cds
    String? genome_file
  }
  command <<<
    align2hints.pl \
      ~{true="-skipalignmentout" false="" skip_alignment_out} \
      ~{true="--in" false="" in} \
      ~{true="--out" false="" out} \
      ~{if defined(cds_part_cut_off) then ("--CDSpart_cutoff " +  '"' + cds_part_cut_off + '"') else ""} \
      ~{if defined(max_intron_len) then ("--maxintronlen " +  '"' + max_intron_len + '"') else ""} \
      ~{if defined(min_intron_len) then ("--minintronlen " +  '"' + min_intron_len + '"') else ""} \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""} \
      ~{if defined(prg) then ("--prg " +  '"' + prg + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{true="--CDS" false="" cds} \
      ~{if defined(genome_file) then ("--genome_file " +  '"' + genome_file + '"') else ""}
  >>>
  parameter_meta {
    skip_alignment_out: "... -o gthfile"
    in: "input file from gth (gff3), spaln (gff3) or exonerate output"
    out: "contains CDSpart, CDS and intron hints"
    cds_part_cut_off: "This many bp are cut off of each CDSpart hint w.r.t. the cds (default 15)."
    max_intron_len: "Alignments with longer gaps are discarded (default 350000)."
    min_intron_len: "Alignments with gaps shorter than this and longer than maxgaplen are discarded (default 41)."
    priority: "Priority of hint group (default 4)."
    prg: "Alignment program of input file, either 'gth', 'spaln', 'exonerate', 'scipio', or 'gemoma'."
    source: "Source identifier (default 'P')"
    cds: "Do not output CDSpart hints, but complete CDS hints."
    genome_file: "if prg is exonerate and start hints shall be created, the genome file from which the alignments were generated, must be specified."
  }
}