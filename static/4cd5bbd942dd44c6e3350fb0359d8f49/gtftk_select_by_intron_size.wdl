version 1.0

task GtftkSelectByIntronSize {
  input {
    Boolean? input_file
    File? output_file
    Boolean? intron_size
    Boolean? merged
    Boolean? delete_mono_exonic
    Boolean? add_intron_size
    Boolean? invert_match
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
  }
  command <<<
    gtftk select_by_intron_size \
      ~{if (input_file) then "--inputfile" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (intron_size) then "--intron-size" else ""} \
      ~{if (merged) then "--merged" else ""} \
      ~{if (delete_mono_exonic) then "--delete-monoexonic" else ""} \
      ~{if (add_intron_size) then "--add-intron-size" else ""} \
      ~{if (invert_match) then "--invert-match" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_date) then "--no-date" else ""} \
      ~{if (add_chr) then "--add-chr" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if (logger_file) then "--logger-file" else ""} \
      ~{if (write_message_to_file) then "--write-message-to-file" else ""}
  >>>
  parameter_meta {
    input_file: "Path to the GTF file. Default to STDIN (default: <stdin>)"
    output_file: "Output file. (default: <stdout>)"
    intron_size: "The minimum intron size. (default: 100)"
    merged: "If selected, the sum of all intron lengths for a gene should be higher than s. (default: False)"
    delete_mono_exonic: "Delete mono-exonic transcripts. (default: False)"
    add_intron_size: "Add a new key containing intron_size (comma-separated in order of apppearance) or the sum of intron size (see -m). (default: False)"
    invert_match: "Keep genes with an intron whose size is above s and delete others. (default: False)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_no_date = "${in_no_date}"
  }
}