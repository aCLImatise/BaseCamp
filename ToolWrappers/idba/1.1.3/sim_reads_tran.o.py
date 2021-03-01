from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sim_Reads_Tran_O_V0_1_0 = CommandToolBuilder(tool="sim_reads_tran.o", base_command=["sim_reads_tran.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sim_Reads_Tran_O_V0_1_0().translate("wdl", allow_empty_container=True)

