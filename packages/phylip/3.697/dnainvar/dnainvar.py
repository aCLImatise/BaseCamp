from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dnainvar_V0_1_0 = CommandToolBuilder(tool="dnainvar", base_command=["dnainvar"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnainvar_V0_1_0().translate("wdl", allow_empty_container=True)

