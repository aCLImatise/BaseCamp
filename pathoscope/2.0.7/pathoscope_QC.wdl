version 1.0

task PathoscopeQC {
  input {
    Int? st_pair_read
    Int? nd_pair_per
    Int? let_us_know
    Int? specify_phred_offset
    File? specify_output_directory
    Int? tell_us_generates
    Int? specify_min_read
    String? specify_adaptor_pathoqc
    Int? a_two
    Int? specify_cutoff_trim
    Int? set_you_want_mask
    Float? specify_cutoff_set
    Int? filtering_duplicates_duplicate
    Int? set_you_want_add
    Boolean? no_prin_seq
    Int? specify_total_number
    Boolean? debug
  }
  command <<<
    pathoscope QC \
      ~{if defined(st_pair_read) then ("-1 " +  '"' + st_pair_read + '"') else ""} \
      ~{if defined(nd_pair_per) then ("-2 " +  '"' + nd_pair_per + '"') else ""} \
      ~{if defined(let_us_know) then ("-r " +  '"' + let_us_know + '"') else ""} \
      ~{if defined(specify_phred_offset) then ("-t " +  '"' + specify_phred_offset + '"') else ""} \
      ~{if defined(specify_output_directory) then ("-o " +  '"' + specify_output_directory + '"') else ""} \
      ~{if defined(tell_us_generates) then ("-s " +  '"' + tell_us_generates + '"') else ""} \
      ~{if defined(specify_min_read) then ("-m " +  '"' + specify_min_read + '"') else ""} \
      ~{if defined(specify_adaptor_pathoqc) then ("-a " +  '"' + specify_adaptor_pathoqc + '"') else ""} \
      ~{if defined(a_two) then ("-a2 " +  '"' + a_two + '"') else ""} \
      ~{if defined(specify_cutoff_trim) then ("-q " +  '"' + specify_cutoff_trim + '"') else ""} \
      ~{if defined(set_you_want_mask) then ("-R " +  '"' + set_you_want_mask + '"') else ""} \
      ~{if defined(specify_cutoff_set) then ("-e " +  '"' + specify_cutoff_set + '"') else ""} \
      ~{if defined(filtering_duplicates_duplicate) then ("-d " +  '"' + filtering_duplicates_duplicate + '"') else ""} \
      ~{if defined(set_you_want_add) then ("-g " +  '"' + set_you_want_add + '"') else ""} \
      ~{if (no_prin_seq) then "--no_prinseq" else ""} \
      ~{if defined(specify_total_number) then ("-p " +  '"' + specify_total_number + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    st_pair_read: "1st pair of read in PER or SER"
    nd_pair_per: "2nd pair of read in PER"
    let_us_know: "let us know a mean read length (0:ignore. [1]:I want\\nto know the range of read length after trimming,\\ni:user_specified_mean_read_length)"
    specify_phred_offset: "specify a phred offset used in encoding base\\nquality(0:not sure?, [33]:phred+33, 64:phred+64)"
    specify_output_directory: "specify output directory in full path"
    tell_us_generates: "tell us which sequencer generates the reads\\n([Illumina], PacBio, Roche454, IonTorrent)"
    specify_min_read: "specify the min read length cutoff[35]"
    specify_adaptor_pathoqc: "specify an adaptor (Y:have pathoQC detect it,\\n[N]:ignore, ACGT:adaptor)"
    a_two: "specify a second adaptor if it is different from the\\nfirst one (Y:have pathoQC detect it, [N]:ignore,\\nACGT:adaptor)"
    specify_cutoff_trim: "specify a cutoff of base quality value to trim at the\\nend of reads([0]:ignore, 1:let pathoQC take care of\\nit, i:user_specified_cutoff_value)"
    set_you_want_mask: "set to 1 if you want to mask all lower case bases that\\nmay correspond to sequence tag or adaptor in Roche454\\nor IonTorrent"
    specify_cutoff_set: "specify a cutoff of entropy of low sequence complexity\\nto filter out[0..100],default:30, set 0 to disable"
    filtering_duplicates_duplicate: "filtering duplicates: [1] (exact duplicate), 2 (5'\\nduplicate), 3 (3' duplicate), 4 (reverse complement\\nexact duplicate), 5 (reverse complement 5'/3'\\nduplicate)"
    set_you_want_add: "Set to 1 if you want to add a valid single read into a\\nreduced valid PER set. Note that this option works\\nonly with PER"
    no_prin_seq: "to force to skip prinseq module"
    specify_total_number: "specify a total number of cpus to use[1]"
    debug: "working on debug mode"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_directory = "${in_specify_output_directory}"
  }
}