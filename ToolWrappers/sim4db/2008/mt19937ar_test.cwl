class: CommandLineTool
id: ../../../mt19937ar_test.cwl
inputs:
- id: in_five_five_five_nine_nine_one_three_three_two
  doc: '621766759 1322453093  853629228  686962251 '
  type: long
  inputBinding:
    position: 0
- id: in_eight_two_three_seven_eight_one_three_six
  doc: '420615890 3467563163  541562091 3535949864 '
  type: long
  inputBinding:
    position: 0
- id: in_eight_four_nine_three_six_two_one_one_nine
  doc: '862871471  797858058 2867774932 2821282612 '
  type: long
  inputBinding:
    position: 0
- id: in_eight_one_five_nine_four_three_zero_four_five
  doc: '929020012 2995251018 3371283296 3608029049 '
  type: long
  inputBinding:
    position: 0
- id: in_one_three_four_three_six_six_two_five_four
  doc: '430507376 1924011722  276713377  196481886 '
  type: long
  inputBinding:
    position: 0
- id: in_four_two_seven_eight_o_netwosix_five_two
  doc: '286876201  823134128 1627554964 3745564327 '
  type: long
  inputBinding:
    position: 0
- id: in_eight_two_nine_four_six_six_eight_three_three
  doc: '821587464 1746693036 1006492428 1595312919 '
  type: long
  inputBinding:
    position: 0
- id: in_four_three_seven_eight_seven_four_zero_fourfour
  doc: '595759426  641721026 1636065708 3899136933 '
  type: long
  inputBinding:
    position: 0
- id: in_five_nine_nine_one_four_nine_three_one_two
  doc: '939093251 1523003209  106601097  376589484 '
  type: long
  inputBinding:
    position: 0
- id: in_one_two_three_five_nine_nine_eight_eight_eight
  doc: '472658308 1053598179 1012713758 3481064843 '
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mt19937ar-test
