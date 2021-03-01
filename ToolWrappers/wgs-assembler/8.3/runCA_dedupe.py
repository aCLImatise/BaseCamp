from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Runca_Dedupe_V0_1_0 = CommandToolBuilder(tool="runCA_dedupe", base_command=["runCA-dedupe"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runca_Dedupe_V0_1_0().translate("wdl", allow_empty_container=True)

