from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Retrieve_Sequences_From_Fasta_Pl_V0_1_0 = CommandToolBuilder(tool="retrieve_sequences_from_fasta.pl", base_command=["retrieve_sequences_from_fasta.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Retrieve_Sequences_From_Fasta_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

