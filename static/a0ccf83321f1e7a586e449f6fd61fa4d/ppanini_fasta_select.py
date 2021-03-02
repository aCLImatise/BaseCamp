from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ppanini_Fasta_Select_V0_1_0 = CommandToolBuilder(tool="ppanini_fasta_select", base_command=["ppanini_fasta_select"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanini_Fasta_Select_V0_1_0().translate("wdl", allow_empty_container=True)

