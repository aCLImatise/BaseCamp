from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bcbio_Prioritize_V0_1_0 = CommandToolBuilder(tool="bcbio_prioritize", base_command=["bcbio-prioritize"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Prioritize_V0_1_0().translate("wdl", allow_empty_container=True)

