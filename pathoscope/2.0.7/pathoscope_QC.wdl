version 1.0

task PathoscopeQC {
  input {
    String? st_pair_read
    String? nd_pair_read
    String? let_us_know
    String? specify_phred_offset
    String? specify_output_directory
    String? tell_us_generates
    String? specify_min_read
    String? specify_adaptor_pathoqc
    String? a_two
    String? specify_cutoff_trim
    String? set_you_want
    String? specify_cutoff_filter
    String? filtering_duplicates_duplicate
    String? set_want_set
    Boolean? no_prin_seq
    String? specify_total_number
    Boolean? debug
  }
  command <<<
    pathoscope QC \
      ~{if defined(st_pair_read) then ("-1 " +  '"' + st_pair_read + '"') else ""} \
      ~{if defined(nd_pair_read) then ("-2 " +  '"' + nd_pair_read + '"') else ""} \
      ~{if defined(let_us_know) then ("-r " +  '"' + let_us_know + '"') else ""} \
      ~{if defined(specify_phred_offset) then ("-t " +  '"' + specify_phred_offset + '"') else ""} \
      ~{if defined(specify_output_directory) then ("-o " +  '"' + specify_output_directory + '"') else ""} \
      ~{if defined(tell_us_generates) then ("-s " +  '"' + tell_us_generates + '"') else ""} \
      ~{if defined(specify_min_read) then ("-m " +  '"' + specify_min_read + '"') else ""} \
      ~{if defined(specify_adaptor_pathoqc) then ("-a " +  '"' + specify_adaptor_pathoqc + '"') else ""} \
      ~{if defined(a_two) then ("-a2 " +  '"' + a_two + '"') else ""} \
      ~{if defined(specify_cutoff_trim) then ("-q " +  '"' + specify_cutoff_trim + '"') else ""} \
      ~{if defined(set_you_want) then ("-R " +  '"' + set_you_want + '"') else ""} \
      ~{if defined(specify_cutoff_filter) then ("-e " +  '"' + specify_cutoff_filter + '"') else ""} \
      ~{if defined(filtering_duplicates_duplicate) then ("-d " +  '"' + filtering_duplicates_duplicate + '"') else ""} \
      ~{if defined(set_want_set) then ("-g " +  '"' + set_want_set + '"') else ""} \
      ~{true="--no_prinseq" false="" no_prin_seq} \
      ~{if defined(specify_total_number) then ("-p " +  '"' + specify_total_number + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    st_pair_read: "1st pair of read in PER or SER"
    nd_pair_read: "2nd pair of read in PER"
    let_us_know: "let us know a mean read length (0:ignore. [1]:I want to know the range of read length after trimming, i:user_specified_mean_read_length)"
    specify_phred_offset: "specify a phred offset used in encoding base quality(0:not sure?, [33]:phred+33, 64:phred+64)"
    specify_output_directory: "specify output directory in full path"
    tell_us_generates: "tell us which sequencer generates the reads ([Illumina], PacBio, Roche454, IonTorrent)"
    specify_min_read: "specify the min read length cutoff[35]"
    specify_adaptor_pathoqc: "specify an adaptor (Y:have pathoQC detect it, [N]:ignore, ACGT:adaptor)"
    a_two: "specify a second adaptor if it is different from the first one (Y:have pathoQC detect it, [N]:ignore, ACGT:adaptor)"
    specify_cutoff_trim: "specify a cutoff of base quality value to trim at the end of reads([0]:ignore, 1:let pathoQC take care of it, i:user_specified_cutoff_value)"
    set_you_want: "set to 1 if you want to mask all lower case bases that may correspond to sequence tag or adaptor in Roche454 or IonTorrent"
    specify_cutoff_filter: "specify a cutoff of entropy of low sequence complexity to filter out[0..100],default:30, set 0 to disable"
    filtering_duplicates_duplicate: "filtering duplicates: [1] (exact duplicate), 2 (5' duplicate), 3 (3' duplicate), 4 (reverse complement exact duplicate), 5 (reverse complement 5'/3' duplicate)"
    set_want_set: "Set to 1 if you want to add a valid single read into a reduced valid PER set. Note that this option works only with PER"
    no_prin_seq: "to force to skip prinseq module"
    specify_total_number: "specify a total number of cpus to use[1]"
    debug: "working on debug mode"
  }
}