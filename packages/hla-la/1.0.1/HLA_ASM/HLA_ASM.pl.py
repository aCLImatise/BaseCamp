from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hla_Asm_Pl_V0_1_0 = CommandToolBuilder(tool="HLA_ASM.pl", base_command=["HLA-ASM.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hla_Asm_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

