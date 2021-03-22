from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Validate_Contigs_Mummer_O_V0_1_0 = CommandToolBuilder(tool="validate_contigs_mummer.o", base_command=["validate_contigs_mummer.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Validate_Contigs_Mummer_O_V0_1_0().translate("wdl", allow_empty_container=True)

