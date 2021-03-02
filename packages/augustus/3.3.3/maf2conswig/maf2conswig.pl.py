from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf2Conswig_Pl_V0_1_0 = CommandToolBuilder(tool="maf2conswig.pl", base_command=["maf2conswig.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf2Conswig_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

