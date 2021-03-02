from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lordec_Trim_V0_1_0 = CommandToolBuilder(tool="lordec_trim", base_command=["lordec-trim"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lordec_Trim_V0_1_0().translate("wdl", allow_empty_container=True)

