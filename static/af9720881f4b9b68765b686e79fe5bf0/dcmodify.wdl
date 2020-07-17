version 1.0

task Dcmodify {
  input {
    Boolean? _quiet_quiet
    Boolean? _verbose_verbose
    Boolean? _debug_debug
    Boolean? ll
    Boolean? lc
    Boolean? _readxferauto_use
    Boolean? td
    Boolean? te
    Boolean? tb
    Boolean? ti
    Boolean? dc
    Boolean? nb
    Boolean? _insert_insert
    Boolean? _insertfromfile_insert
    Boolean? no_reserv_check
    Boolean? _modify_modify
    Boolean? mf
    Boolean? ma
    Boolean? _erase_tagitem
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
      ~{true="-q" false="" _quiet_quiet} \
      ~{true="-v" false="" _verbose_verbose} \
      ~{true="-d" false="" _debug_debug} \
      ~{true="-ll" false="" ll} \
      ~{true="-lc" false="" lc} \
      ~{true="-t" false="" _readxferauto_use} \
      ~{true="-td" false="" td} \
      ~{true="-te" false="" te} \
      ~{true="-tb" false="" tb} \
      ~{true="-ti" false="" ti} \
      ~{true="-dc" false="" dc} \
      ~{true="-nb" false="" nb} \
      ~{true="-i" false="" _insert_insert} \
      ~{true="-if" false="" _insertfromfile_insert} \
      ~{true="--no-reserv-check" false="" no_reserv_check} \
      ~{true="-m" false="" _modify_modify} \
      ~{true="-mf" false="" mf} \
      ~{true="-ma" false="" ma} \
      ~{true="-e" false="" _erase_tagitem} \
      ~{true="-ea" false="" ea} \
      ~{true="-ep" false="" ep} \
      ~{true="--gen-stud-uid" false="" gen_stud_uid} \
      ~{true="--gen-ser-uid" false="" gen_ser_uid} \
      ~{true="--gen-inst-uid" false="" gen_inst_uid} \
      ~{true="--no-meta-uid" false="" no_meta_uid} \
      ~{true="-ie" false="" ie} \
      ~{true="--ignore-missing-tags" false="" ignore_missing_tags} \
      ~{true="--ignore-un-values" false="" ignore_un_values} \
      ~{true="-F" false="" _writedataset_write} \
      ~{true="-u" false="" _disablenewvr_disable} \
      ~{true="-g" false="" _grouplengthremove_always} \
      ~{true="-le" false="" le}
  >>>
  parameter_meta {
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_verbose: "--verbose              verbose mode, print processing details"
    _debug_debug: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant (fatal, error, warn, info, debug, trace) use level l for the logger"
    lc: "--log-config           [f]ilename: string use config file f for the logger"
    _readxferauto_use: "=   --read-xfer-auto       use TS recognition (default)"
    td: "--read-xfer-detect     ignore TS specified in the file meta header"
    te: "--read-xfer-little     read with explicit VR little endian TS"
    tb: "--read-xfer-big        read with explicit VR big endian TS"
    ti: "--read-xfer-implicit   read with implicit VR little endian TS"
    dc: "--disable-correction   disable automatic data correction"
    nb: "--no-backup            don't backup files (DANGEROUS)"
    _insert_insert: "--insert               \"[t]ag-path=[v]alue\" insert (or overwrite) path at position t with value v"
    _insertfromfile_insert: "--insert-from-file     \"[t]ag-path=[f]ilename\" insert (or overwrite) path at position t with value from file f"
    no_reserv_check: "do not check private reservations when inserting private tags"
    _modify_modify: "--modify               \"[t]ag-path=[v]alue\" modify tag at position t to value v"
    mf: "--modify-from-file     \"[t]ag-path=[f]ilename\" modify tag at position t to value from file f"
    ma: "--modify-all           \"[t]ag=[v]alue\" modify ALL matching tags t in file to value v"
    _erase_tagitem: "--erase                \"[t]ag-path\" erase tag/item at position t"
    ea: "--erase-all            \"[t]ag\" erase ALL matching tags t in file"
    ep: "--erase-private        erase ALL private data from file"
    gen_stud_uid: "generate new Study Instance UID"
    gen_ser_uid: "generate new Series Instance UID"
    gen_inst_uid: "generate new SOP Instance UID"
    no_meta_uid: "do not update metaheader UIDs if related UIDs in the dataset are modified"
    ie: "--ignore-errors        continue with file, if modify error occurs"
    ignore_missing_tags: "treat 'tag not found' as success when modifying or erasing in datasets"
    ignore_un_values: "do not try writing any values to elements having a VR of UN"
    _writedataset_write: "--write-dataset        write data set without file meta information"
    _disablenewvr_disable: "--disable-new-vr       disable support for new VRs, convert to OB"
    _grouplengthremove_always: "--group-length-remove  always write without group length elements"
    le: "--length-undefined     write with undefined lengths"
    dcm_file_in: "DICOM input filename to be modified"
  }
}