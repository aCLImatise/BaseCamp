from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Asp_Ls_V0_1_0 = CommandToolBuilder(tool="asp_ls", base_command=["asp-ls"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Asp_Ls_V0_1_0().translate("wdl", allow_empty_container=True)

