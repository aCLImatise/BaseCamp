from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fq2Fa_O_V0_1_0 = CommandToolBuilder(tool="fq2fa.o", base_command=["fq2fa.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fq2Fa_O_V0_1_0().translate("wdl", allow_empty_container=True)

