from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Runta_V0_1_0 = CommandToolBuilder(tool="runTA", base_command=["runTA"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runta_V0_1_0().translate("wdl", allow_empty_container=True)

