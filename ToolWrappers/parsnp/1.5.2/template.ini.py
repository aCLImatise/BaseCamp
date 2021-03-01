from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Template_Ini_V0_1_0 = CommandToolBuilder(tool="template.ini", base_command=["template.ini"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Template_Ini_V0_1_0().translate("wdl", allow_empty_container=True)

