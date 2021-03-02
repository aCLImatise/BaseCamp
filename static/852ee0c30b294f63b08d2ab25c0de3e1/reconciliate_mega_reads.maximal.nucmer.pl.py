from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Reconciliate_Mega_Reads_Maximal_Nucmer_Pl_V0_1_0 = CommandToolBuilder(tool="reconciliate_mega_reads.maximal.nucmer.pl", base_command=["reconciliate_mega_reads.maximal.nucmer.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reconciliate_Mega_Reads_Maximal_Nucmer_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

