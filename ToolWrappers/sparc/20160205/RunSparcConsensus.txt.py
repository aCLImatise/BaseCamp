from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Runsparcconsensus_Txt_V0_1_0 = CommandToolBuilder(tool="RunSparcConsensus.txt", base_command=["RunSparcConsensus.txt"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runsparcconsensus_Txt_V0_1_0().translate("wdl", allow_empty_container=True)

