from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blast_And_Promiscuity_Filter_Pl_V0_1_0 = CommandToolBuilder(tool="blast_and_promiscuity_filter.pl", base_command=["blast_and_promiscuity_filter.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blast_And_Promiscuity_Filter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

