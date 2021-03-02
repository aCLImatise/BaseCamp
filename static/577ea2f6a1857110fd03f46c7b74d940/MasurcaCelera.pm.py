from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Masurcacelera_Pm_V0_1_0 = CommandToolBuilder(tool="MasurcaCelera.pm", base_command=["MasurcaCelera.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Masurcacelera_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

