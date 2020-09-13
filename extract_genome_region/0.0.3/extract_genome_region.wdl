version 1.0

task ExtractGenomeRegion {
  input {
    Boolean? naming
    String record_name
    String scaffold
    String start
    String stop
    String left_bfr
    String right_bfr
    String csv
    String seq_range
    String csv_seq_range
  }
  command <<<
    extract_genome_region \
      ~{record_name} \
      ~{scaffold} \
      ~{start} \
      ~{stop} \
      ~{left_bfr} \
      ~{right_bfr} \
      ~{csv} \
      ~{seq_range} \
      ~{csv_seq_range} \
      ~{if (naming) then "--naming" else ""}
  >>>
  parameter_meta {
    naming: "[csv|seq_range|csv_seq_range]\\nOptions regarding how each new fasta record\\nwill be named. See main help-text for\\nexplainations of options. [default='csv']"
    record_name: "The name you want the seq to have in the new fasta."
    scaffold: "The name of the seq record in the source fasta (chromosome, scaffold, contig, etc)."
    start: "The first bp of the seq feature you want in the new fasta."
    stop: "The last bp of the seq feature you want in the new fasta."
    left_bfr: "How many \\\"extra\\\" bp with coords smaller than `start` you want (0 for none)."
    right_bfr: "How many \\\"extra\\\" bp with coords larger than `stop` you want (0 for none)."
    csv: "use only the contents of the `record_name` field in the csv file (>CPR23)."
    seq_range: "use only the `scaffold` name and sequence range (>scaffold1:230-679)."
    csv_seq_range: "use both the contents of the `record_name` field and the `scaffold`.\\nname and sequence range (>CPR23 scaffold1:230-679)."
  }
  output {
    File out_stdout = stdout()
  }
}