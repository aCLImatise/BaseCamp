from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bamfixmateinformation_V0_1_0 = CommandToolBuilder(tool="bamfixmateinformation", base_command=["bamfixmateinformation"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamfixmateinformation_V0_1_0().translate("wdl", allow_empty_container=True)

