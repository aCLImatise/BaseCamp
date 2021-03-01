from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Idba_Tran_O_V0_1_0 = CommandToolBuilder(tool="idba_tran.o", base_command=["idba_tran.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idba_Tran_O_V0_1_0().translate("wdl", allow_empty_container=True)

