from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Omssa2Pepxml_V0_1_0 = CommandToolBuilder(tool="omssa2pepXML", base_command=["omssa2pepXML"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Omssa2Pepxml_V0_1_0().translate("wdl", allow_empty_container=True)

