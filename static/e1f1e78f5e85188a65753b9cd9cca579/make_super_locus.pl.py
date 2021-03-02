from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Super_Locus_Pl_V0_1_0 = CommandToolBuilder(tool="make_super_locus.pl", base_command=["make_super_locus.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Super_Locus_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

