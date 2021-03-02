from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


O_Fasta_Length_Distribution_V0_1_0 = CommandToolBuilder(tool="o_fasta_length_distribution", base_command=["o-fasta-length-distribution"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Fasta_Length_Distribution_V0_1_0().translate("wdl", allow_empty_container=True)

