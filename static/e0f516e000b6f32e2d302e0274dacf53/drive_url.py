from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Drive_Url_V0_1_0 = CommandToolBuilder(tool="drive_url", base_command=["drive", "url"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Url_V0_1_0().translate("wdl", allow_empty_container=True)

