from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sagapython_Version_V0_1_0 = CommandToolBuilder(tool="sagapython_version", base_command=["sagapython-version"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sagapython_Version_V0_1_0().translate("wdl", allow_empty_container=True)

