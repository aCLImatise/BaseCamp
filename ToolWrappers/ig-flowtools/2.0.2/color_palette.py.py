from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Color_Palette_Py_V0_1_0 = CommandToolBuilder(tool="color_palette.py", base_command=["color_palette.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Color_Palette_Py_V0_1_0().translate("wdl", allow_empty_container=True)

