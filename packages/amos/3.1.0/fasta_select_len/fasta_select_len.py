from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fasta_Select_Len_V0_1_0 = CommandToolBuilder(tool="fasta_select_len", base_command=["fasta_select_len"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Select_Len_V0_1_0().translate("wdl", allow_empty_container=True)

