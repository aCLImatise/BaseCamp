from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Manual_Jan13_2015_Pdf_V0_1_0 = CommandToolBuilder(tool="Manual_Jan13_2015.pdf", base_command=["Manual_Jan13_2015.pdf"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Manual_Jan13_2015_Pdf_V0_1_0().translate("wdl", allow_empty_container=True)

