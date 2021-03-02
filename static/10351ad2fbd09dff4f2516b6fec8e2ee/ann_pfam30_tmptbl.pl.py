from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ann_Pfam30_Tmptbl_Pl_V0_1_0 = CommandToolBuilder(tool="ann_pfam30_tmptbl.pl", base_command=["ann_pfam30_tmptbl.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ann_Pfam30_Tmptbl_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

