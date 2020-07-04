version 1.0

task MzXML2Search {
  input {
    Boolean? num_the_first
    Boolean? num_the_last
    Boolean? n_where_n
    Boolean? scans_precursor_charge
    Boolean? num_minimum_mh
    Boolean? num_where_maximum
    Boolean? num_where_minimum
    Boolean? num_where_max
    Boolean? pm
    Boolean? pi
    Boolean? minimum_minimum_threshold
    Boolean? nwhere_n_int
    Boolean? str_where_str
    Boolean? num_maximum_reported
    Boolean? remove_chargereduced_precursors
    Boolean? remove_itraq_peaks
    Boolean? remove_reporter_peaks
  }
  command <<<
    MzXML2Search \
      ~{true="-F" false="" num_the_first} \
      ~{true="-L" false="" num_the_last} \
      ~{true="-C" false="" n_where_n} \
      ~{true="-c" false="" scans_precursor_charge} \
      ~{true="-B" false="" num_minimum_mh} \
      ~{true="-T" false="" num_where_maximum} \
      ~{true="-P" false="" num_where_minimum} \
      ~{true="-N" false="" num_where_max} \
      ~{true="-pm" false="" pm} \
      ~{true="-pi" false="" pi} \
      ~{true="-I" false="" minimum_minimum_threshold} \
      ~{true="-M" false="" nwhere_n_int} \
      ~{true="-A" false="" str_where_str} \
      ~{true="-Z" false="" num_maximum_reported} \
      ~{true="-X" false="" remove_chargereduced_precursors} \
      ~{true="-Q" false="" remove_itraq_peaks} \
      ~{true="-G" false="" remove_reporter_peaks}
  >>>
  parameter_meta {
    num_the_first: "<num>      where num is an int specifying the first scan"
    num_the_last: "<num>      where num is an int specifying the last scan"
    n_where_n: "<n1>[-<n2>]     \"force charge(s)\": where n1 is an integer specifying the precursor charge state (or possible charge range from n1 to n2 inclusive) to use; this option forces input scans to be output with the user-specified charge (or charge range)"
    scans_precursor_charge: "<n1>[-<n2>]     \"suggest charge(s)\": for scans which do not have a precursor charge (or charge range) already determined in the input file, use the user-specified charge (or charge range) for those scans.  Input scans which already have defined charge (or charge range) are output with their original, unchanged values."
    num_minimum_mh: "<num>      where num is a float specifying minimum MH+ mass, default=600.0 Da"
    num_where_maximum: "<num>      where num is a float specifying maximum MH+ mass, default=5000.0 Da"
    num_where_minimum: "<num>      where num is an int specifying minimum peak count, default=5"
    num_where_max: "<num>      where num is an int specifying max peak count using most intense peaks, default=0 to print all peaks"
    pm: "<num>     where num is an int specifying mass precision in peaklist, default=4"
    pi: "<num>     where num is an int specifying intensity precision in peaklist, default=0"
    minimum_minimum_threshold: "<num>      where num is a float specifying minimum threshold for peak intensity, default=0.01"
    nwhere_n_int: "<n1>[-<n2>]where n1 is an int specifying MS level to export (default=2) and n2 specifies an optional range of MS levels to export"
    str_where_str: "<str>      where str is the activation method, \"CID\", \"ETD\", or \"HCD\" if this option is not specified, then all scans are included"
    num_maximum_reported: "<num>      maximum reported charge state for scans that do have a precursor charge; useful when scan has a high charge that search engines can't handle. No charge is reported if charge is larger than max value, default=7."
    remove_chargereduced_precursors: "remove charge-reduced precursors from the spectra (suitable for ETD)."
    remove_itraq_peaks: "remove iTRAQ reporter peaks in the range 112-122 Th."
    remove_reporter_peaks: "remove TMT reporter peaks in the range 126-132 Th."
  }
}