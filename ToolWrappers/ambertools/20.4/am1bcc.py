from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Am1Bcc_V0_1_0 = CommandToolBuilder(tool="am1bcc", base_command=["am1bcc"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Am1Bcc_V0_1_0().translate("wdl", allow_empty_container=True)

