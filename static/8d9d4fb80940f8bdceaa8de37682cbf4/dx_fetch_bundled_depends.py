from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dx_Fetch_Bundled_Depends_V0_1_0 = CommandToolBuilder(tool="dx_fetch_bundled_depends", base_command=["dx-fetch-bundled-depends"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Fetch_Bundled_Depends_V0_1_0().translate("wdl", allow_empty_container=True)

