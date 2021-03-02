from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Carnac_To_Fasta_V0_1_0 = CommandToolBuilder(tool="CARNAC_to_fasta", base_command=["CARNAC_to_fasta"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Carnac_To_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

