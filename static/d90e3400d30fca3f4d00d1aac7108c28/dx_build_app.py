from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dx_Build_App_V0_1_0 = CommandToolBuilder(tool="dx_build_app", base_command=["dx-build-app"], inputs=[], outputs=[], container="quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Build_App_V0_1_0().translate("wdl")

