from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Io_Pl_V0_1_0 = CommandToolBuilder(tool="io.pl", base_command=["io.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Io_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

