version 1.0

task BlastToLinksh {
  input {
    Int? fileb_blast_identity
  }
  command <<<
    blast_to_link_sh \
      ~{if defined(fileb_blast_identity) then ("-i " +  '"' + fileb_blast_identity + '"') else ""}
  >>>
  parameter_meta {
    fileb_blast_identity: "file\\n-b blast identity cutoff (0 - 100), default 90\\n-l blast length percentage cutoff (0 - 100), default 20, use 90 for genes\\n-o output directory (optional). By default the file is replaced in the same location\\n-q database chraracter delimiter, default \\\"_\\\"\\n-Q query field to retrieve (l=left, r=right), default left\\n-d database chraracter delimiter, default \\\"_\\\"\\n-D database field to retrieve (l=left, r=right), default right\\n-I contig mode\\n-v version\\n-h display usage message"
  }
  output {
    File out_stdout = stdout()
  }
}