from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Locarna_Rnaz_Pm_V0_1_0 = CommandToolBuilder(tool="LocARNA_RNAz.pm", base_command=["LocARNA_RNAz.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Locarna_Rnaz_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

