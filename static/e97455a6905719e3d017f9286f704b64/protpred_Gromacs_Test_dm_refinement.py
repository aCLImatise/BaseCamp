from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Protpred_Gromacs_Test_Dm_Refinement_V0_1_0 = CommandToolBuilder(tool="protpred_Gromacs_Test_dm_refinement", base_command=["protpred-Gromacs-Test_dm_refinement"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protpred_Gromacs_Test_Dm_Refinement_V0_1_0().translate("wdl", allow_empty_container=True)

