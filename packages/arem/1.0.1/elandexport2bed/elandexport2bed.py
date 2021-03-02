from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Elandexport2Bed_V0_1_0 = CommandToolBuilder(tool="elandexport2bed", base_command=["elandexport2bed"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Elandexport2Bed_V0_1_0().translate("wdl", allow_empty_container=True)

