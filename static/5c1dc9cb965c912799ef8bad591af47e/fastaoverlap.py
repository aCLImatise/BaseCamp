from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastaoverlap_V0_1_0 = CommandToolBuilder(tool="fastaoverlap", base_command=["fastaoverlap"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaoverlap_V0_1_0().translate("wdl", allow_empty_container=True)

