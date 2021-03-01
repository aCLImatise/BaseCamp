from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Degapseq_V0_1_0 = CommandToolBuilder(tool="_degapseq", base_command=["_degapseq"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Degapseq_V0_1_0().translate("wdl", allow_empty_container=True)

