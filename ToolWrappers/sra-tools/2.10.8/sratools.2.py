from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sratools_2_V0_1_0 = CommandToolBuilder(tool="sratools.2", base_command=["sratools.2"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sratools_2_V0_1_0().translate("wdl", allow_empty_container=True)

