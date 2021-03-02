from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ps2Pdf12_Options____V0_1_0 = CommandToolBuilder(tool="ps2pdf12_options...", base_command=["ps2pdf12", "options..."], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ps2Pdf12_Options____V0_1_0().translate("wdl", allow_empty_container=True)

