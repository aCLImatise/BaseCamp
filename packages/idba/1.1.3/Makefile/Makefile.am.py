from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Makefile_Am_V0_1_0 = CommandToolBuilder(tool="Makefile.am", base_command=["Makefile.am"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makefile_Am_V0_1_0().translate("wdl", allow_empty_container=True)

