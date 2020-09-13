version 1.0

task Dcmodify {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _readdataset_read
    Boolean? _readxferauto_use
    Boolean? td
    Boolean? te
    Boolean? tb
    Boolean? ti
    Boolean? dc
    Boolean? backup
    Boolean? nb
    Boolean? _insert_insert
    Boolean? _insertfromfile_insert
    Boolean? no_reserv_check
    Boolean? _modify_tag
    Boolean? mf
    Boolean? ma
    Boolean? _erase_erase
    Boolean? ea
    Boolean? ep
    Boolean? gen_stud_uid
    Boolean? gen_ser_uid
    Boolean? gen_inst_uid
    Boolean? no_meta_uid
    Boolean? ie
    Boolean? ignore_missing_tags
    Boolean? ignore_un_values
    Boolean? _writedataset_write
    Boolean? _disablenewvr_disable
    Boolean? _grouplengthremove_always
    Boolean? le
    String dcm_file_in
  }
  command <<<
    dcmodify \
      ~{dcm_file_in} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_readdataset_read) then "-f" else ""} \
      ~{if (_readxferauto_use) then "-t" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (te) then "-te" else ""} \
      ~{if (tb) then "-tb" else ""} \
      ~{if (ti) then "-ti" else ""} \
      ~{if (dc) then "-dc" else ""} \
      ~{if (backup) then "--backup" else ""} \
      ~{if (nb) then "-nb" else ""} \
      ~{if (_insert_insert) then "-i" else ""} \
      ~{if (_insertfromfile_insert) then "-if" else ""} \
      ~{if (no_reserv_check) then "--no-reserv-check" else ""} \
      ~{if (_modify_tag) then "-m" else ""} \
      ~{if (mf) then "-mf" else ""} \
      ~{if (ma) then "-ma" else ""} \
      ~{if (_erase_erase) then "-e" else ""} \
      ~{if (ea) then "-ea" else ""} \
      ~{if (ep) then "-ep" else ""} \
      ~{if (gen_stud_uid) then "--gen-stud-uid" else ""} \
      ~{if (gen_ser_uid) then "--gen-ser-uid" else ""} \
      ~{if (gen_inst_uid) then "--gen-inst-uid" else ""} \
      ~{if (no_meta_uid) then "--no-meta-uid" else ""} \
      ~{if (ie) then "-ie" else ""} \
      ~{if (ignore_missing_tags) then "--ignore-missing-tags" else ""} \
      ~{if (ignore_un_values) then "--ignore-un-values" else ""} \
      ~{if (_writedataset_write) then "-F" else ""} \
      ~{if (_disablenewvr_disable) then "-u" else ""} \
      ~{if (_grouplengthremove_always) then "-g" else ""} \
      ~{if (le) then "-le" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    _readdataset_read: "--read-dataset         read data set without file meta information"
    _readxferauto_use: "=   --read-xfer-auto       use TS recognition (default)"
    td: "--read-xfer-detect     ignore TS specified in the file meta header"
    te: "--read-xfer-little     read with explicit VR little endian TS"
    tb: "--read-xfer-big        read with explicit VR big endian TS"
    ti: "--read-xfer-implicit   read with implicit VR little endian TS"
    dc: "--disable-correction   disable automatic data correction"
    backup: "backup files before modifying (default)"
    nb: "--no-backup            don't backup files (DANGEROUS)"
    _insert_insert: "--insert               \\\"[t]ag-path=[v]alue\\\"\\ninsert (or overwrite) path at position t\\nwith value v"
    _insertfromfile_insert: "--insert-from-file     \\\"[t]ag-path=[f]ilename\\\"\\ninsert (or overwrite) path at position t\\nwith value from file f"
    no_reserv_check: "do not check private reservations\\nwhen inserting private tags"
    _modify_tag: "--modify               \\\"[t]ag-path=[v]alue\\\"\\nmodify tag at position t to value v"
    mf: "--modify-from-file     \\\"[t]ag-path=[f]ilename\\\"\\nmodify tag at position t to value from file f"
    ma: "--modify-all           \\\"[t]ag=[v]alue\\\"\\nmodify ALL matching tags t in file to value v"
    _erase_erase: "--erase                \\\"[t]ag-path\\\"\\nerase tag/item at position t"
    ea: "--erase-all            \\\"[t]ag\\\"\\nerase ALL matching tags t in file"
    ep: "--erase-private        erase ALL private data from file"
    gen_stud_uid: "generate new Study Instance UID"
    gen_ser_uid: "generate new Series Instance UID"
    gen_inst_uid: "generate new SOP Instance UID"
    no_meta_uid: "do not update metaheader UIDs if related\\nUIDs in the dataset are modified"
    ie: "--ignore-errors        continue with file, if modify error occurs"
    ignore_missing_tags: "treat 'tag not found' as success\\nwhen modifying or erasing in datasets"
    ignore_un_values: "do not try writing any values to elements\\nhaving a VR of UN"
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    le: "--length-undefined     write with undefined lengths"
    dcm_file_in: "DICOM input filename to be modified"
  }
  output {
    File out_stdout = stdout()
  }
}