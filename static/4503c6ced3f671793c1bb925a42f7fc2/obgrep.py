from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Obgrep_V0_1_0 = CommandToolBuilder(tool="obgrep", base_command=["obgrep"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obgrep_V0_1_0().translate("wdl", allow_empty_container=True)

