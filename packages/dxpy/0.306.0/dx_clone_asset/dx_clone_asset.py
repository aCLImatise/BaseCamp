from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dx_Clone_Asset_V0_1_0 = CommandToolBuilder(tool="dx_clone_asset", base_command=["dx-clone-asset"], inputs=[], outputs=[], container="quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Clone_Asset_V0_1_0().translate("wdl")

