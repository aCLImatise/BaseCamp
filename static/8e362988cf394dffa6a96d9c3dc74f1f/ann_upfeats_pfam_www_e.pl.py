from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ann_Upfeats_Pfam_Www_E_Pl_V0_1_0 = CommandToolBuilder(tool="ann_upfeats_pfam_www_e.pl", base_command=["ann_upfeats_pfam_www_e.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ann_Upfeats_Pfam_Www_E_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

