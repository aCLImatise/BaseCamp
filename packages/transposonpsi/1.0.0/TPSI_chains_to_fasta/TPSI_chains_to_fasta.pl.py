from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tpsi_Chains_To_Fasta_Pl_V0_1_0 = CommandToolBuilder(tool="TPSI_chains_to_fasta.pl", base_command=["TPSI_chains_to_fasta.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tpsi_Chains_To_Fasta_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

