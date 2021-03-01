from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ann_Exons_Up_Www_Pl_V0_1_0 = CommandToolBuilder(tool="ann_exons_up_www.pl", base_command=["ann_exons_up_www.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ann_Exons_Up_Www_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

