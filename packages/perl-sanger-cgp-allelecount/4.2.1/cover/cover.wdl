version 1.0

task Cover {
  input {
    Boolean? info
    Boolean? version
    Boolean? silent
    Boolean? summary
    String? report
    Directory? output_dir
    Boolean? launch
    File? select
    File? ignore
    String? select_re
    String? ignore_re
    Boolean? write
    Boolean? delete
    Boolean? dump_db
    String? coverage
    Boolean? test
    Boolean? gcov
    String? make
    Boolean? prefer_lib
    Boolean? add_uncover_able_point
    File? delete_uncover_able_point
  }
  command <<<
    cover \
      ~{if (info) then "-info" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if (summary) then "-summary" else ""} \
      ~{if defined(report) then ("-report " +  '"' + report + '"') else ""} \
      ~{if defined(output_dir) then ("-outputdir " +  '"' + output_dir + '"') else ""} \
      ~{if (launch) then "-launch" else ""} \
      ~{if defined(select) then ("-select " +  '"' + select + '"') else ""} \
      ~{if defined(ignore) then ("-ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(select_re) then ("-select_re " +  '"' + select_re + '"') else ""} \
      ~{if defined(ignore_re) then ("-ignore_re " +  '"' + ignore_re + '"') else ""} \
      ~{if (write) then "-write" else ""} \
      ~{if (delete) then "-delete" else ""} \
      ~{if (dump_db) then "-dump_db" else ""} \
      ~{if defined(coverage) then ("-coverage " +  '"' + coverage + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (gcov) then "-gcov" else ""} \
      ~{if defined(make) then ("-make " +  '"' + make + '"') else ""} \
      ~{if (prefer_lib) then "-prefer_lib" else ""} \
      ~{if (add_uncover_able_point) then "-add_uncoverable_point" else ""} \
      ~{if defined(delete_uncover_able_point) then ("-delete_uncoverable_point " +  '"' + delete_uncover_able_point + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-sanger-cgp-allelecount:4.2.1--pl526h516909a_0"
  }
  parameter_meta {
    info: "- show documentation"
    version: "- show version"
    silent: "- don't print informational messages (default off)"
    summary: "- give summary report                (default on)"
    report: "- report format                      (default html)"
    output_dir: "- directory for output               (default given db)"
    launch: "- launch report in viewer (if avail) (default off)"
    select: "- only report on the file            (default all)"
    ignore: "- don't report on the file           (default none)"
    select_re: "- append to REs of files to select   (default none)"
    ignore_re: "- append to REs of files to ignore   (default none)"
    write: "[db]           - write the merged database          (default off)"
    delete: "- drop database(s)                   (default off)"
    dump_db: "- dump database(s) (for debugging)   (default off)"
    coverage: "- report on criterion  (default all available)"
    test: "- drop database(s) and run make test (default off)"
    gcov: "- run gcov to cover XS code     (default on if using gcc)"
    make: "- use the given 'make' program for 'make test'"
    prefer_lib: "- prefer files in lib                (default off)"
    add_uncover_able_point: "string"
    delete_uncover_able_point: "file"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}