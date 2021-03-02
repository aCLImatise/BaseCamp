from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Residuegen_V0_1_0 = CommandToolBuilder(tool="residuegen", base_command=["residuegen"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Residuegen_V0_1_0().translate("wdl", allow_empty_container=True)

