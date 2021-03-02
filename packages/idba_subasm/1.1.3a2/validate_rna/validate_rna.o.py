from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Validate_Rna_O_V0_1_0 = CommandToolBuilder(tool="validate_rna.o", base_command=["validate_rna.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validate_Rna_O_V0_1_0().translate("wdl", allow_empty_container=True)

