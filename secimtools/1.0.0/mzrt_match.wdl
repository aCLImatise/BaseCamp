version 1.0

task MzrtMatch.py {
  input {
    String? an_no_one
    String? an_no_two
    String? uniqid_one
    String? mz_i_done
    String? rti_done
    String? uniqid_two
    String? mz_id_two
    String? rt_id_two
    String? all
    String? matched
    String? unmatched_one
    String? unmatched_two
    String? summary
    String? figure
    String? mz_cut
    String? rt_cut
    String? name_one
    String? name_two
  }
  command <<<
    mzrt_match.py \
      ~{if defined(an_no_one) then ("--anno1 " +  '"' + an_no_one + '"') else ""} \
      ~{if defined(an_no_two) then ("--anno2 " +  '"' + an_no_two + '"') else ""} \
      ~{if defined(uniqid_one) then ("--uniqID1 " +  '"' + uniqid_one + '"') else ""} \
      ~{if defined(mz_i_done) then ("--mzID1 " +  '"' + mz_i_done + '"') else ""} \
      ~{if defined(rti_done) then ("--rtID1 " +  '"' + rti_done + '"') else ""} \
      ~{if defined(uniqid_two) then ("--uniqID2 " +  '"' + uniqid_two + '"') else ""} \
      ~{if defined(mz_id_two) then ("--mzID2 " +  '"' + mz_id_two + '"') else ""} \
      ~{if defined(rt_id_two) then ("--rtID2 " +  '"' + rt_id_two + '"') else ""} \
      ~{if defined(all) then ("--all " +  '"' + all + '"') else ""} \
      ~{if defined(matched) then ("--matched " +  '"' + matched + '"') else ""} \
      ~{if defined(unmatched_one) then ("--unmatched1 " +  '"' + unmatched_one + '"') else ""} \
      ~{if defined(unmatched_two) then ("--unmatched2 " +  '"' + unmatched_two + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(figure) then ("--figure " +  '"' + figure + '"') else ""} \
      ~{if defined(mz_cut) then ("--mzcut " +  '"' + mz_cut + '"') else ""} \
      ~{if defined(rt_cut) then ("--rtcut " +  '"' + rt_cut + '"') else ""} \
      ~{if defined(name_one) then ("--name1 " +  '"' + name_one + '"') else ""} \
      ~{if defined(name_two) then ("--name2 " +  '"' + name_two + '"') else ""}
  >>>
  parameter_meta {
    an_no_one: "Out path for first file"
    an_no_two: "Out path for second file"
    uniqid_one: "Name of the column in file1 that contains the uniqID"
    mz_i_done: "Name of the column in file1 that contains MZ"
    rti_done: "Name of the column in file1 that contains RT"
    uniqid_two: "Name of the column in file2 that contains the uniqID"
    mz_id_two: "Name of the column in file2 that contains MZ"
    rt_id_two: "Name of the column in file2 that contains RT"
    all: "Out path for All peak combinations File"
    matched: "Out path for Matched peaks combinations File"
    unmatched_one: "Out path for Unmatched peaks in file 1"
    unmatched_two: "Out path for Unmatched peaks in file 2"
    summary: "Out path for Summary File"
    figure: "Out path for Matched vs Unmatched Combinations Venn Diagram File"
    mz_cut: "Window value for MZ matching [default 0.005]"
    rt_cut: "Window value for RT matching [default 0.15]"
    name_one: "Short name for File 1 [default F1]"
    name_two: "Short name for File 2 [default F2]"
  }
}