from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Imfusion_Build_V0_1_0 = CommandToolBuilder(tool="imfusion_build", base_command=["imfusion-build"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Imfusion_Build_V0_1_0().translate("wdl", allow_empty_container=True)

