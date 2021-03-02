from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Protpred_Gromacs_Test_Load_Population_V0_1_0 = CommandToolBuilder(tool="protpred_Gromacs_Test_load_population", base_command=["protpred-Gromacs-Test_load_population"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Protpred_Gromacs_Test_Load_Population_V0_1_0().translate("wdl", allow_empty_container=True)

