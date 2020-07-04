version 1.0

task Exiftool {
  input {
    String? tag
    String? tags_from_file
    String? exclude_exclude_specified
    Boolean? args
    Boolean? binary_output_metadata
    String? coordformat_set_format
    Boolean? charset
    Boolean? csv
    String? dateformat_set_format
    Boolean? decimal_show_tag
    Boolean? ex
    Boolean? forceprint_force_printing
    Boolean? groupheadings_organize_output
    Boolean? groupnames_print_group
    Boolean? hex_show_tag
    Boolean? html_dump
    Boolean? json_exportimport_tags
    Boolean? long_use_format
    Boolean? latin_use_latin
    Boolean? lang
    String? list_item
    Boolean? _printconv_print
    String? printformat_print_output
    Boolean? php
    Boolean? short_short_output
    Boolean? veryshort_very_short
    String? sep
    Boolean? sort
    Boolean? enable_output_structured
    Boolean? tab_output_tabdelimited
    Boolean? table_output_tabular
    Boolean? verbose_print_messages
    Boolean? ext_textout_write
    Boolean? fmt_tagout_write
    String? we_xt
    Boolean? xmlformat_use_format
    Boolean? duplicates_allow_extracted
    Boolean? _composite_calculate
    Boolean? ee
    Boolean? ext
    Boolean? fixbase_fix_base
    Boolean? fast
    Boolean? file_order
    String? ignore_ignore_specified
    Boolean? expr_conditionally_process
    Boolean? ignoreminorerrors_ignore_errors
    String? set_output_file
    Boolean? overwrite_original
    Boolean? overwrite_original_in_place
    Boolean? preserve_file_datetime
    String? password
    Boolean? progress
    Boolean? quiet_quiet_processing
    Boolean? recurse_recursively_subdirectories
    Boolean? scan_for_xmp
    Boolean? unknown_extract_unknown_tags
    Boolean? unknown_extract_unknown_binary
    String? wm
    Boolean? zip_readwrite_compressed
    String? at
    Boolean? pause_pause_terminating
    Boolean? list
    Boolean? ver
    Boolean? delete_original
    Boolean? restore_original
    String? api
    Boolean? common_args
    String? config
    Boolean? echo
    Boolean? execute
    String? srcfile
    String? stay_open
    String? user_param
    String? s_one
    String? s_two
    String? s_three
    Boolean? copyright
    Boolean? xmp_dc
    Boolean? list_f
    Boolean? list_r
    Boolean? list_wf
    Boolean? list_gone
    Boolean? list_d
    String geotiff
    String fmt
    String exif
    String id_three
    String iptc
    String photoshop
    String quicktime
    String riff
  }
  command <<<
    exiftool \
      ~{geotiff} \
      ~{fmt} \
      ~{exif} \
      ~{id_three} \
      ~{iptc} \
      ~{photoshop} \
      ~{quicktime} \
      ~{riff} \
      ~{if defined(tag) then ("--TAG " +  '"' + tag + '"') else ""} \
      ~{if defined(tags_from_file) then ("-tagsFromFile " +  '"' + tags_from_file + '"') else ""} \
      ~{if defined(exclude_exclude_specified) then ("-x " +  '"' + exclude_exclude_specified + '"') else ""} \
      ~{true="-args" false="" args} \
      ~{true="-b" false="" binary_output_metadata} \
      ~{if defined(coordformat_set_format) then ("-c " +  '"' + coordformat_set_format + '"') else ""} \
      ~{true="-charset" false="" charset} \
      ~{true="-csv" false="" csv} \
      ~{if defined(dateformat_set_format) then ("-d " +  '"' + dateformat_set_format + '"') else ""} \
      ~{true="-D" false="" decimal_show_tag} \
      ~{true="-ex" false="" ex} \
      ~{true="-f" false="" forceprint_force_printing} \
      ~{true="-g" false="" groupheadings_organize_output} \
      ~{true="-G" false="" groupnames_print_group} \
      ~{true="-H" false="" hex_show_tag} \
      ~{true="-htmlDump" false="" html_dump} \
      ~{true="-j" false="" json_exportimport_tags} \
      ~{true="-l" false="" long_use_format} \
      ~{true="-L" false="" latin_use_latin} \
      ~{true="-lang" false="" lang} \
      ~{if defined(list_item) then ("-listItem " +  '"' + list_item + '"') else ""} \
      ~{true="-n" false="" _printconv_print} \
      ~{if defined(printformat_print_output) then ("-p " +  '"' + printformat_print_output + '"') else ""} \
      ~{true="-php" false="" php} \
      ~{true="-s" false="" short_short_output} \
      ~{true="-S" false="" veryshort_very_short} \
      ~{if defined(sep) then ("-sep " +  '"' + sep + '"') else ""} \
      ~{true="-sort" false="" sort} \
      ~{true="-struct" false="" enable_output_structured} \
      ~{true="-t" false="" tab_output_tabdelimited} \
      ~{true="-T" false="" table_output_tabular} \
      ~{true="-v" false="" verbose_print_messages} \
      ~{true="-w" false="" ext_textout_write} \
      ~{true="-W" false="" fmt_tagout_write} \
      ~{if defined(we_xt) then ("-Wext " +  '"' + we_xt + '"') else ""} \
      ~{true="-X" false="" xmlformat_use_format} \
      ~{true="-a" false="" duplicates_allow_extracted} \
      ~{true="-e" false="" _composite_calculate} \
      ~{true="-ee" false="" ee} \
      ~{true="-ext" false="" ext} \
      ~{true="-F" false="" fixbase_fix_base} \
      ~{true="-fast" false="" fast} \
      ~{true="-fileOrder" false="" file_order} \
      ~{if defined(ignore_ignore_specified) then ("-i " +  '"' + ignore_ignore_specified + '"') else ""} \
      ~{true="-if" false="" expr_conditionally_process} \
      ~{true="-m" false="" ignoreminorerrors_ignore_errors} \
      ~{if defined(set_output_file) then ("-o " +  '"' + set_output_file + '"') else ""} \
      ~{true="-overwrite_original" false="" overwrite_original} \
      ~{true="-overwrite_original_in_place" false="" overwrite_original_in_place} \
      ~{true="-P" false="" preserve_file_datetime} \
      ~{if defined(password) then ("-password " +  '"' + password + '"') else ""} \
      ~{true="-progress" false="" progress} \
      ~{true="-q" false="" quiet_quiet_processing} \
      ~{true="-r" false="" recurse_recursively_subdirectories} \
      ~{true="-scanForXMP" false="" scan_for_xmp} \
      ~{true="-u" false="" unknown_extract_unknown_tags} \
      ~{true="-U" false="" unknown_extract_unknown_binary} \
      ~{if defined(wm) then ("-wm " +  '"' + wm + '"') else ""} \
      ~{true="-z" false="" zip_readwrite_compressed} \
      ~{if defined(at) then ("-@ " +  '"' + at + '"') else ""} \
      ~{true="-k" false="" pause_pause_terminating} \
      ~{true="-list" false="" list} \
      ~{true="-ver" false="" ver} \
      ~{true="-delete_original" false="" delete_original} \
      ~{true="-restore_original" false="" restore_original} \
      ~{if defined(api) then ("-api " +  '"' + api + '"') else ""} \
      ~{true="-common_args" false="" common_args} \
      ~{if defined(config) then ("-config " +  '"' + config + '"') else ""} \
      ~{true="-echo" false="" echo} \
      ~{true="-execute" false="" execute} \
      ~{if defined(srcfile) then ("-srcfile " +  '"' + srcfile + '"') else ""} \
      ~{if defined(stay_open) then ("-stay_open " +  '"' + stay_open + '"') else ""} \
      ~{if defined(user_param) then ("-userParam " +  '"' + user_param + '"') else ""} \
      ~{if defined(s_one) then ("-s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("-s2 " +  '"' + s_two + '"') else ""} \
      ~{if defined(s_three) then ("-s3 " +  '"' + s_three + '"') else ""} \
      ~{true="-copyright" false="" copyright} \
      ~{true="-XMP-dc" false="" xmp_dc} \
      ~{true="-listf" false="" list_f} \
      ~{true="-listr" false="" list_r} \
      ~{true="-listwf" false="" list_wf} \
      ~{true="-listg1" false="" list_gone} \
      ~{true="-listd" false="" list_d}
  >>>
  parameter_meta {
    tag: "Extract or exclude specified tag"
    tags_from_file: "Copy tag values from file"
    exclude_exclude_specified: "(-exclude)           Exclude specified tag"
    args: "(-argFormat)         Format metadata as exiftool arguments"
    binary_output_metadata: "(-binary)            Output metadata in binary format"
    coordformat_set_format: "(-coordFormat)       Set format for GPS coordinates"
    charset: "[[TYPE=]CHARSET]        Specify encoding for special characters"
    csv: "[[+]=CSVFILE]                Export/import tags in CSV format"
    dateformat_set_format: "(-dateFormat)        Set format for date/time values"
    decimal_show_tag: "(-decimal)           Show tag ID numbers in decimal"
    ex: "(-escape(HTML|XML))  Escape values for HTML (-E) or XML (-ex)"
    forceprint_force_printing: "(-forcePrint)        Force printing of all specified tags"
    groupheadings_organize_output: "[NUM...]  (-groupHeadings)     Organize output by tag group"
    groupnames_print_group: "[NUM...]  (-groupNames)        Print group name for each tag"
    hex_show_tag: "(-hex)               Show tag ID numbers in hexadecimal"
    html_dump: "[OFFSET]                Generate HTML-format binary dump"
    json_exportimport_tags: "[[+]=JSONFILE] (-json)         Export/import tags in JSON format"
    long_use_format: "(-long)              Use long 2-line output format"
    latin_use_latin: "(-latin)             Use Windows Latin1 encoding"
    lang: "[LANG]                     Set current language"
    list_item: "Extract specific item from a list"
    _printconv_print: "(--printConv)        No print conversion"
    printformat_print_output: "(-printFormat)       Print output in specified format"
    php: "Export tags as a PHP Array"
    short_short_output: "[NUM]     (-short)             Short output format"
    veryshort_very_short: "(-veryShort)         Very short output format"
    sep: "(-separator)         Set separator string for list items"
    sort: "Sort output alphabetically"
    enable_output_structured: "Enable output of structured information"
    tab_output_tabdelimited: "(-tab)               Output in tab-delimited list format"
    table_output_tabular: "(-table)             Output in tabular format"
    verbose_print_messages: "[NUM]     (-verbose)           Print verbose messages"
    ext_textout_write: "[+|!] EXT (-textOut)           Write (or overwrite!) output text files"
    fmt_tagout_write: "[+|!] FMT (-tagOut)            Write output text file for each tag"
    we_xt: "(-tagOutExt)         Write only specified file types with -W"
    xmlformat_use_format: "(-xmlFormat)         Use RDF/XML output format"
    duplicates_allow_extracted: "(-duplicates)        Allow duplicate tags to be extracted"
    _composite_calculate: "(--composite)        Do not calculate composite tags"
    ee: "(-extractEmbedded)   Extract information from embedded files"
    ext: "[+] EXT (-extension)         Process files with specified extension"
    fixbase_fix_base: "[OFFSET]  (-fixBase)           Fix the base for maker notes offsets"
    fast: "[NUM]                       Increase speed for slow devices"
    file_order: "[-]TAG                Set file processing order"
    ignore_ignore_specified: "(-ignore)            Ignore specified directory name"
    expr_conditionally_process: "[NUM] EXPR                    Conditionally process files"
    ignoreminorerrors_ignore_errors: "(-ignoreMinorErrors) Ignore minor errors and warnings"
    set_output_file: "(-out)               Set output file or directory name"
    overwrite_original: "Overwrite original by renaming tmp file"
    overwrite_original_in_place: "Overwrite original by copying tmp file"
    preserve_file_datetime: "(-preserve)          Preserve file modification date/time"
    password: "Password for processing protected files"
    progress: "[:[TITLE]]              Show file progress count"
    quiet_quiet_processing: "(-quiet)             Quiet processing"
    recurse_recursively_subdirectories: "[.]       (-recurse)           Recursively process subdirectories"
    scan_for_xmp: "Brute force XMP scan"
    unknown_extract_unknown_tags: "(-unknown)           Extract unknown tags"
    unknown_extract_unknown_binary: "(-unknown2)          Extract unknown binary tags too"
    wm: "(-writeMode)         Set mode for writing/creating tags"
    zip_readwrite_compressed: "(-zip)               Read/write compressed information"
    at: "Read command-line arguments from file"
    pause_pause_terminating: "(-pause)             Pause before terminating"
    list: "[w|f|wf|g[NUM]|d|x]         List various exiftool capabilities"
    ver: "Print exiftool version number"
    delete_original: "[!]              Delete \"_original\" backups"
    restore_original: "Restore from \"_original\" backups"
    api: "[[^]=[VAL]]              Set ExifTool API option"
    common_args: "Define common arguments"
    config: "Specify configuration file name"
    echo: "[NUM] TEXT                  Echo text to stdout or stderr"
    execute: "[NUM]                    Execute multiple commands on one line"
    srcfile: "Process a different source file"
    stay_open: "Keep reading -@ argfile even after EOF"
    user_param: "[[^]=[VAL]]      Set user parameter (API UserParam opt)"
    s_one: "- print tag names instead of descriptions"
    s_two: "- no extra spaces to column-align values"
    s_three: "- print values only (no tag names)"
    copyright: "<Copyright $createdate, Phil Harvey"
    xmp_dc: ":All  # list all writable XMP-dc tags"
    list_f: "# list all supported file extensions"
    list_r: "# list all recognized file extensions"
    list_wf: "# list all writable file extensions"
    list_gone: "# list all groups in family 1"
    list_d: "# list all deletable groups"
    geotiff: "r/w/c  |  ID3            r    |  (and more)"
    fmt: "Output"
    exif: "Internal encoding of EXIF \"ASCII\" strings    (none)"
    id_three: "Internal encoding of ID3v1 information       Latin"
    iptc: "Internal IPTC encoding to assume when        Latin IPTC:CodedCharacterSet is not defined"
    photoshop: "Internal encoding of Photoshop IRB strings   Latin"
    quicktime: "Internal encoding of QuickTime strings       MacRoman"
    riff: "Internal encoding of RIFF strings            0"
  }
}