from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Monovar_V0_1_0 = CommandToolBuilder(tool="monovar", base_command=["monovar"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Monovar_V0_1_0().translate("wdl", allow_empty_container=True)

