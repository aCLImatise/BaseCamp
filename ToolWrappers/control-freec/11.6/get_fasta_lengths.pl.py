from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Fasta_Lengths_Pl_V0_1_0 = CommandToolBuilder(tool="get_fasta_lengths.pl", base_command=["get_fasta_lengths.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Fasta_Lengths_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

