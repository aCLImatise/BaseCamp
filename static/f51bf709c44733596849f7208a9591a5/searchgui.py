from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Searchgui_V0_1_0 = CommandToolBuilder(tool="searchgui", base_command=["searchgui"], inputs=[], outputs=[], container="quay.io/biocontainers/searchgui:4.0.25--h779adbc_2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Searchgui_V0_1_0().translate("wdl")

