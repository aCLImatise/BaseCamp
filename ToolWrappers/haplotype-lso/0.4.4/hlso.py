from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hlso_V0_1_0 = CommandToolBuilder(tool="hlso", base_command=["hlso"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hlso_V0_1_0().translate("wdl", allow_empty_container=True)

