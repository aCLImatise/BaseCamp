from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Protpred_Gromacs_Sort_Method_Files_By_Front_Dominance_V0_1_0 = CommandToolBuilder(tool="protpred_Gromacs_Sort_Method_Files_by_Front_Dominance", base_command=["protpred-Gromacs-Sort_Method_Files_by_Front_Dominance"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protpred_Gromacs_Sort_Method_Files_By_Front_Dominance_V0_1_0().translate("wdl", allow_empty_container=True)

