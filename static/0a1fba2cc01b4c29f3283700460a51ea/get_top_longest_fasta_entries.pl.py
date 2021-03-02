from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Top_Longest_Fasta_Entries_Pl_V0_1_0 = CommandToolBuilder(tool="get_top_longest_fasta_entries.pl", base_command=["get_top_longest_fasta_entries.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Top_Longest_Fasta_Entries_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

