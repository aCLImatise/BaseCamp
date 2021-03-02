from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Output_Reconciled_Scaffolds_Pl_V0_1_0 = CommandToolBuilder(tool="output_reconciled_scaffolds.pl", base_command=["output_reconciled_scaffolds.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Output_Reconciled_Scaffolds_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

