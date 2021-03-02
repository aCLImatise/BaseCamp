from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Discovar_V0_1_0 = CommandToolBuilder(tool="Discovar", base_command=["Discovar"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Discovar_V0_1_0().translate("wdl", allow_empty_container=True)

