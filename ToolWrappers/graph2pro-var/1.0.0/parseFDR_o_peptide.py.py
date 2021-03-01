from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parsefdr_O_Peptide_Py_V0_1_0 = CommandToolBuilder(tool="parseFDR_o_peptide.py", base_command=["parseFDR_o_peptide.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsefdr_O_Peptide_Py_V0_1_0().translate("wdl", allow_empty_container=True)

