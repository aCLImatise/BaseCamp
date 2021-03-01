from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Idba_O_V0_1_0 = CommandToolBuilder(tool="idba.o", base_command=["idba.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idba_O_V0_1_0().translate("wdl", allow_empty_container=True)

