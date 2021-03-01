from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Openslide_Write_Png_V0_1_0 = CommandToolBuilder(tool="openslide_write_png", base_command=["openslide-write-png"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Openslide_Write_Png_V0_1_0().translate("wdl", allow_empty_container=True)

