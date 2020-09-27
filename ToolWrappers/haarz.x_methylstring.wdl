version 1.0

task HaarzxMethylstring {
  input {
    File? database
    File? bam
    File? annotation_files
    String? attributes
    String? offsets
    File? pathfilename_output_file
    File? unique_only
    Int? threads
    String haar_z_do_tx
    File? file
  }
  command <<<
    haarz_x methylstring \
      ~{haar_z_do_tx} \
      ~{file} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(annotation_files) then ("--annotationfiles " +  '"' + annotation_files + '"') else ""} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{if defined(offsets) then ("--offsets " +  '"' + offsets + '"') else ""} \
      ~{if defined(pathfilename_output_file) then ("--output " +  '"' + pathfilename_output_file + '"') else ""} \
      ~{if (unique_only) then "--uniqueonly" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    database: "[<file>]         list of path/filename(s) of fasta database sequence(s) (default:none)"
    bam: "path/filename of sorted and indexed (!) bamfile (default:none)"
    annotation_files: "[<file>]  list of path/filename(s) of BED or GFF file (s))"
    attributes: "attributes that shall be selected for overlap annotation"
    offsets: "offsets for the annotation"
    pathfilename_output_file: "path/filename of output file (will be sorted) (default:none)"
    unique_only: "generate a bam output (-o <filename> required)"
    threads: "start <n> threads (default:10)"
    haar_z_do_tx: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
    File out_pathfilename_output_file = "${in_pathfilename_output_file}"
    File out_unique_only = "${in_unique_only}"
  }
}