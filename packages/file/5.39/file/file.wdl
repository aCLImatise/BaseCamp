version 1.0

task File {
  input {
    File? magic_file
    Boolean? uncompress
    Boolean? uncompress_no_report
    Boolean? brief
    Boolean? checking_print_out
    File? exclude
    String? exclude_quiet
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
    Boolean? no_sandbox
    Boolean? compile
    Boolean? debug
    String elf_notes
    String elf_ph_num
    String elf_sh_num
    String in_dir
    String name
    String regex
  }
  command <<<
    file \
      ~{elf_notes} \
      ~{elf_ph_num} \
      ~{elf_sh_num} \
      ~{in_dir} \
      ~{name} \
      ~{regex} \
      ~{if defined(magic_file) then ("--magic-file " +  '"' + magic_file + '"') else ""} \
      ~{if (uncompress) then "--uncompress" else ""} \
      ~{if (uncompress_no_report) then "--uncompress-noreport" else ""} \
      ~{if (brief) then "--brief" else ""} \
      ~{if (checking_print_out) then "--checking-printout" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(exclude_quiet) then ("--exclude-quiet " +  '"' + exclude_quiet + '"') else ""} \
      ~{if defined(files_from) then ("--files-from " +  '"' + files_from + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if (mime) then "--mime" else ""} \
      ~{if (apple) then "--apple" else ""} \
      ~{if (extension) then "--extension" else ""} \
      ~{if (mime_type) then "--mime-type" else ""} \
      ~{if (mime_encoding) then "--mime-encoding" else ""} \
      ~{if (keep_going) then "--keep-going" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (dereference) then "--dereference" else ""} \
      ~{if (no_buffer) then "--no-buffer" else ""} \
      ~{if (no_pad) then "--no-pad" else ""} \
      ~{if (print_zero) then "--print0" else ""} \
      ~{if (preserve_date) then "--preserve-date" else ""} \
      ~{if (parameter) then "--parameter" else ""} \
      ~{if (raw) then "--raw" else ""} \
      ~{if (special_files) then "--special-files" else ""} \
      ~{if (no_sandbox) then "--no-sandbox" else ""} \
      ~{if (compile) then "--compile" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/file:5.39"
  }
  parameter_meta {
    magic_file: "use LIST as a colon-separated list of magic\\nnumber files"
    uncompress: "try to look inside compressed files"
    uncompress_no_report: "only print the contents of compressed files"
    brief: "do not prepend filenames to output lines"
    checking_print_out: "print the parsed form of the magic file, use in\\nconjunction with -m to debug a new magic file\\nbefore installing it"
    exclude: "exclude TEST from the list of test to be\\nperformed for file. Valid tests are:\\napptype, ascii, cdf, compress, csv, elf,\\nencoding, soft, tar, json, text,\\ntokens"
    exclude_quiet: "like exclude, but ignore unknown tests"
    files_from: "read the filenames to be examined from FILE"
    separator: "use string as separator instead of `:'"
    mime: "output MIME type strings (--mime-type and"
    apple: "output the Apple CREATOR/TYPE"
    extension: "output a slash-separated list of extensions"
    mime_type: "output the MIME type"
    mime_encoding: "output the MIME encoding"
    keep_going: "don't stop at the first match"
    list: "list magic strength"
    dereference: "follow symlinks"
    no_buffer: "do not buffer output"
    no_pad: "do not pad output"
    print_zero: "terminate filenames with ASCII NUL"
    preserve_date: "preserve access times on files"
    parameter: "set file engine parameter limits\\nbytes 1048576 max bytes to look inside file"
    raw: "don't translate unprintable chars to \\ooo"
    special_files: "treat special (block/char devices) files as\\nordinary ones"
    no_sandbox: "disable system call sandboxing"
    compile: "compile file specified by -m"
    debug: "print debugging messages"
    elf_notes: "256 max ELF notes processed"
    elf_ph_num: "2048 max ELF prog sections processed"
    elf_sh_num: "32768 max ELF sections processed"
    in_dir: "50 recursion limit for indirection"
    name: "50 use limit for name/use magic"
    regex: "8192 length limit for REGEX searches"
  }
  output {
    File out_stdout = stdout()
  }
}