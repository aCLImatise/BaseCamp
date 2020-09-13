version 1.0

task Btrim {
  input {
    Boolean? u
    Boolean? k
    Boolean? var_2
    Boolean? var_3
    Boolean? c
    Boolean? f
    Boolean? m
    Boolean? a
    File? o
    String? unit_ig
    File? file
  }
  command <<<
    btrim \
      ~{unit_ig} \
      ~{file} \
      ~{if (u) then "-u" else ""} \
      ~{if (k) then "-k" else ""} \
      ~{if (var_2) then "-t" else ""} \
      ~{if (var_3) then "-T" else ""} \
      ~{if (c) then "-c" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (m) then "-m" else ""} \
      ~{if (a) then "-a" else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  parameter_meta {
    u: "[Unitig file]"
    k: "[Kmer size]"
    var_2: "[Tipping length (none)]"
    var_3: "[Cleaning Step (1)]"
    c: "[Core used (1)]"
    f: "[Unitig min coverage (none, 0 for auto)]"
    m: "[Unitig max coverage (none)]"
    a: "[Edge filtering ratio (none)]"
    o: "[Output file (out_tipped)]"
    unit_ig: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}