from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sratools_2_10_8_V0_1_0 = CommandToolBuilder(tool="sratools.2.10.8", base_command=["sratools.2.10.8"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sratools_2_10_8_V0_1_0().translate("wdl", allow_empty_container=True)

