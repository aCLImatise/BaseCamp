from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Chiron_V0_1_0 = CommandToolBuilder(tool="chiron", base_command=["chiron"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chiron_V0_1_0().translate("wdl", allow_empty_container=True)

