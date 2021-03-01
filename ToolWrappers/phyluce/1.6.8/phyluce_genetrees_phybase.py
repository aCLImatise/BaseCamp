from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Phyluce_Genetrees_Phybase_V0_1_0 = CommandToolBuilder(tool="phyluce_genetrees_phybase", base_command=["phyluce_genetrees_phybase"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Genetrees_Phybase_V0_1_0().translate("wdl", allow_empty_container=True)

