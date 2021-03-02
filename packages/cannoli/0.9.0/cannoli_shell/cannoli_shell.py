from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cannoli_Shell_V0_1_0 = CommandToolBuilder(tool="cannoli_shell", base_command=["cannoli-shell"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cannoli_Shell_V0_1_0().translate("wdl", allow_empty_container=True)

