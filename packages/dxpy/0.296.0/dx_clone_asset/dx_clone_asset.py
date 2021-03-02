from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dx_Clone_Asset_V0_1_0 = CommandToolBuilder(tool="dx_clone_asset", base_command=["dx-clone-asset"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Clone_Asset_V0_1_0().translate("wdl", allow_empty_container=True)

