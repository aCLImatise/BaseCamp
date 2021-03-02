from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Color_Defs_Pl_V0_1_0 = CommandToolBuilder(tool="color_defs.pl", base_command=["color_defs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Color_Defs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

