from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lavplt_Svg_Pl_V0_1_0 = CommandToolBuilder(tool="lavplt_svg.pl", base_command=["lavplt_svg.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lavplt_Svg_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

