from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Convert_Fasta_To_V2_Pl_V0_1_0 = CommandToolBuilder(tool="convert_fasta_to_v2.pl", base_command=["convert-fasta-to-v2.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Fasta_To_V2_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

