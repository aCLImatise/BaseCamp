from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ann_Pfam28_Pl_V0_1_0 = CommandToolBuilder(tool="ann_pfam28.pl", base_command=["ann_pfam28.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ann_Pfam28_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

