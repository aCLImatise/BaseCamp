from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Acdc_V0_1_0 = CommandToolBuilder(tool="acdc", base_command=["acdc"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Acdc_V0_1_0().translate("wdl", allow_empty_container=True)

