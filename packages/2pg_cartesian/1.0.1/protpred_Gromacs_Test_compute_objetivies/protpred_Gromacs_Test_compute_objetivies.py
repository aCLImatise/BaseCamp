from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Protpred_Gromacs_Test_Compute_Objetivies_V0_1_0 = CommandToolBuilder(tool="protpred_Gromacs_Test_compute_objetivies", base_command=["protpred-Gromacs-Test_compute_objetivies"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protpred_Gromacs_Test_Compute_Objetivies_V0_1_0().translate("wdl", allow_empty_container=True)

