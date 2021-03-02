from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pdbfuncs_Pm_V0_1_0 = CommandToolBuilder(tool="PDBFUNCS.pm", base_command=["PDBFUNCS.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pdbfuncs_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

