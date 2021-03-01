from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf_To_Int_Seqs_Py_V0_1_0 = CommandToolBuilder(tool="maf_to_int_seqs.py", base_command=["maf_to_int_seqs.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_To_Int_Seqs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

