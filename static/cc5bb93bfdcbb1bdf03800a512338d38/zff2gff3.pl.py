from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Zff2Gff3_Pl_V0_1_0 = CommandToolBuilder(tool="zff2gff3.pl", base_command=["zff2gff3.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zff2Gff3_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

