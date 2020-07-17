version 1.0

task LckdoLockfileFile {
  input {
    String? magic_file
    Boolean? uncompress
    Boolean? uncompress_no_report
    Boolean? brief
    Boolean? checking_print_out
    String? exclude
    File? files_from
    String? separator
    Boolean? mime
    Boolean? apple
    Boolean? extension
    Boolean? mime_type
    Boolean? mime_encoding
    Boolean? keep_going
    Boolean? list
    Boolean? dereference
    Boolean? no_buffer
    Boolean? no_pad
    Boolean? print_zero
    Boolean? preserve_date
    Boolean? parameter
    Boolean? raw
    Boolean? special_files
    Boolean? compile
    Boolean? debug
    File file
    String? option_dot_dot_dot
    File? file_dot_dot_dot
  }
  command <<<
    lckdo lockfile file \
      ~{file} \
      ~{option_dot_dot_dot} \
      ~{file_dot_dot_dot} \
      ~{if defined(magic_file) then ("--magic-file " +  '"' + magic_file + '"') else ""} \
      ~{true="--uncompress" false="" uncompress} \
      ~{true="--uncompress-noreport" false="" uncompress_no_report} \
      ~{true="--brief" false="" brief} \
      ~{true="--checking-printout" false="" checking_print_out} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(files_from) then ("--files-from " +  '"' + files_from + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{true="--mime" false="" mime} \
      ~{true="--apple" false="" apple} \
      ~{true="--extension" false="" extension} \
      ~{true="--mime-type" false="" mime_type} \
      ~{true="--mime-encoding" false="" mime_encoding} \
      ~{true="--keep-going" false="" keep_going} \
      ~{true="--list" false="" list} \
      ~{true="--dereference" false="" dereference} \
      ~{true="--no-buffer" false="" no_buffer} \
      ~{true="--no-pad" false="" no_pad} \
      ~{true="--print0" false="" print_zero} \
      ~{true="--preserve-date" false="" preserve_date} \
      ~{true="--parameter" false="" parameter} \
      ~{true="--raw" false="" raw} \
      ~{true="--special-files" false="" special_files} \
      ~{true="--compile" false="" compile} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    magic_file: "use LIST as a colon-separated list of magic number files"
    uncompress: "try to look inside compressed files"
    uncompress_no_report: "only print the contents of compressed files"
    brief: "do not prepend filenames to output lines"
    checking_print_out: "print the parsed form of the magic file, use in conjunction with -m to debug a new magic file before installing it"
    exclude: "exclude TEST from the list of test to be performed for file. Valid tests are: apptype, ascii, cdf, compress, elf, encoding, soft, tar, json, text, tokens"
    files_from: "read the filenames to be examined from FILE"
    separator: "use string as separator instead of `:'"
    mime: "output MIME type strings (--mime-type and --mime-encoding)"
    apple: "output the Apple CREATOR/TYPE"
    extension: "output a slash-separated list of extensions"
    mime_type: "output the MIME type"
    mime_encoding: "output the MIME encoding"
    keep_going: "don't stop at the first match"
    list: "list magic strength"
    dereference: "follow symlinks (default if POSIXLY_CORRECT is set)"
    no_buffer: "do not buffer output"
    no_pad: "do not pad output"
    print_zero: "terminate filenames with ASCII NUL"
    preserve_date: "preserve access times on files"
    parameter: "set file engine parameter limits indir        15 recursion limit for indirection name         30 use limit for name/use magic elf_notes   256 max ELF notes processed elf_phnum   128 max ELF prog sections processed elf_shnum 32768 max ELF sections processed"
    raw: "don't translate unprintable chars to \ooo"
    special_files: "treat special (block/char devices) files as ordinary ones"
    compile: "compile file specified by -m"
    debug: "print debugging messages"
    file: ""
    option_dot_dot_dot: ""
    file_dot_dot_dot: ""
  }
}