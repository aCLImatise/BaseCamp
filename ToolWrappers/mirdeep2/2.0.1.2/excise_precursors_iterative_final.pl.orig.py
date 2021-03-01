from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Excise_Precursors_Iterative_Final_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="excise_precursors_iterative_final.pl.orig", base_command=["excise_precursors_iterative_final.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Excise_Precursors_Iterative_Final_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

