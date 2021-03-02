from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Segtools_Signal_Distribution_V0_1_0 = CommandToolBuilder(tool="segtools_signal_distribution", base_command=["segtools-signal-distribution"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segtools_Signal_Distribution_V0_1_0().translate("wdl", allow_empty_container=True)

