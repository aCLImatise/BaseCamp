from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Int_Seqs_To_Char_Strings_Py_V0_1_0 = CommandToolBuilder(tool="int_seqs_to_char_strings.py", base_command=["int_seqs_to_char_strings.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Int_Seqs_To_Char_Strings_Py_V0_1_0().translate("wdl")

