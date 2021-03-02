from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rnaz_Pm_V0_1_0 = CommandToolBuilder(tool="RNAz.pm", base_command=["RNAz.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnaz_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

