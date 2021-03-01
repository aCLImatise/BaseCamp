from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sammpileupreader_Py_V0_1_0 = CommandToolBuilder(tool="SAMMPileUpReader.py", base_command=["SAMMPileUpReader.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sammpileupreader_Py_V0_1_0().translate("wdl", allow_empty_container=True)

