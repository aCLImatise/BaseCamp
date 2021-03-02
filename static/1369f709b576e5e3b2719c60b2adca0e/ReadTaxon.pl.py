from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Readtaxon_Pl_V0_1_0 = CommandToolBuilder(tool="ReadTaxon.pl", base_command=["ReadTaxon.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readtaxon_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

