from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Imfusion_Insertions_V0_1_0 = CommandToolBuilder(tool="imfusion_insertions", base_command=["imfusion-insertions"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Imfusion_Insertions_V0_1_0().translate("wdl", allow_empty_container=True)

