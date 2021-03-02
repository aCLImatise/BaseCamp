from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Amino_Acids_Tsv_V0_1_0 = CommandToolBuilder(tool="amino_acids.tsv", base_command=["amino_acids.tsv"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amino_Acids_Tsv_V0_1_0().translate("wdl", allow_empty_container=True)

