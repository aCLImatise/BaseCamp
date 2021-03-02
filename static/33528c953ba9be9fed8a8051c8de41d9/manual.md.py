from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Manual_Md_V0_1_0 = CommandToolBuilder(tool="manual.md", base_command=["manual.md"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Manual_Md_V0_1_0().translate("wdl", allow_empty_container=True)

