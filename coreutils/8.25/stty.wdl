version 1.0

task Stty {
  input {
    Boolean? all
    Boolean? save
    String? file
    Boolean? var_3
    Boolean? same_as_raw
    Boolean? same_parenb_cs
    Boolean? var_6
    Boolean? same_ocrnl_onlret
    String? pass_eight
    Boolean? same_as_cooked
    String set_input_speeds
    String var_11
    String same_brkint_ignpar
    String crt
    String dec
    String ek
    String same_parenb_parodd
    String var_17
    String same_icrnl_onlcr
    String same_ignbrk_brkint
    String sane
  }
  command <<<
    stty \
      ~{set_input_speeds} \
      ~{var_11} \
      ~{same_brkint_ignpar} \
      ~{crt} \
      ~{dec} \
      ~{ek} \
      ~{same_parenb_parodd} \
      ~{var_17} \
      ~{same_icrnl_onlcr} \
      ~{same_ignbrk_brkint} \
      ~{sane} \
      ~{true="--all" false="" all} \
      ~{true="--save" false="" save} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{true="-cbreak" false="" var_3} \
      ~{true="-cooked" false="" same_as_raw} \
      ~{true="-evenp" false="" same_parenb_cs} \
      ~{true="-litout" false="" var_6} \
      ~{true="-nl" false="" same_ocrnl_onlret} \
      ~{if defined(pass_eight) then ("-pass8 " +  '"' + pass_eight + '"') else ""} \
      ~{true="-raw" false="" same_as_cooked}
  >>>
  parameter_meta {
    all: "print all current settings in human-readable form"
    save: "print all current settings in a stty-readable form"
    file: "open and use the specified DEVICE instead of stdin"
    var_3: "same as icanon"
    same_as_raw: "same as raw"
    same_parenb_cs: "same as -parenb cs8"
    var_6: "same as parenb istrip opost cs7"
    same_ocrnl_onlret: "same as icrnl -inlcr -igncr onlcr -ocrnl -onlret"
    pass_eight: "as parenb istrip cs7"
    same_as_cooked: "same as cooked"
    set_input_speeds: "set the input and output speeds to N bauds"
    var_11: "same as -icanon"
    same_brkint_ignpar: "same as brkint ignpar istrip icrnl ixon opost isig icanon, eof and eol characters to their default values"
    crt: "same as echoe echoctl echoke"
    dec: "same as echoe echoctl echoke -ixany intr ^c erase 0177 kill ^u"
    ek: "erase and kill characters to their default values"
    same_parenb_parodd: "same as parenb -parodd cs7"
    var_17: "same as -parenb -istrip -opost cs8"
    same_icrnl_onlcr: "same as -icrnl -onlcr"
    same_ignbrk_brkint: "same as -ignbrk -brkint -ignpar -parmrk -inpck -istrip -inlcr -igncr -icrnl -ixon -ixoff -icanon -opost -isig -iuclc -ixany -imaxbel -xcase min 1 time 0"
    sane: "same as cread -ignbrk brkint -inlcr -igncr icrnl icanon iexten echo echoe echok -echonl -noflsh -ixoff -iutf8 -iuclc -ixany imaxbel -xcase -olcuc -ocrnl opost -ofill onlcr -onocr -onlret nl0 cr0 tab0 bs0 vt0 ff0 isig -tostop -ofdel -echoprt echoctl echoke -flusho, all special characters to their default values"
  }
}