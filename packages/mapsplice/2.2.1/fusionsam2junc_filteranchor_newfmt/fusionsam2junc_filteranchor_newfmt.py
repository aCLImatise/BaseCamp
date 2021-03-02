from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fusionsam2Junc_Filteranchor_Newfmt_V0_1_0 = CommandToolBuilder(tool="fusionsam2junc_filteranchor_newfmt", base_command=["fusionsam2junc_filteranchor_newfmt"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fusionsam2Junc_Filteranchor_Newfmt_V0_1_0().translate("wdl", allow_empty_container=True)

