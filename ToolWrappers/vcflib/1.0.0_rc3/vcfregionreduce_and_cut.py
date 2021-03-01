from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vcfregionreduce_And_Cut_V0_1_0 = CommandToolBuilder(tool="vcfregionreduce_and_cut", base_command=["vcfregionreduce_and_cut"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfregionreduce_And_Cut_V0_1_0().translate("wdl", allow_empty_container=True)

