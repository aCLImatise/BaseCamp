from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dx_Fetch_Bundled_Depends_V0_1_0 = CommandToolBuilder(tool="dx_fetch_bundled_depends", base_command=["dx-fetch-bundled-depends"], inputs=[], outputs=[], container="quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Fetch_Bundled_Depends_V0_1_0().translate("wdl")

