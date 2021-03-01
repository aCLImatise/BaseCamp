from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dataframesumallvalues_R_V0_1_0 = CommandToolBuilder(tool="dataframeSumAllValues.r", base_command=["dataframeSumAllValues.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dataframesumallvalues_R_V0_1_0().translate("wdl", allow_empty_container=True)

