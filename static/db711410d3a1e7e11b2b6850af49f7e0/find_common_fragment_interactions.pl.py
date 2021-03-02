from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Find_Common_Fragment_Interactions_Pl_V0_1_0 = CommandToolBuilder(tool="find_common_fragment_interactions.pl", base_command=["find_common_fragment_interactions.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Common_Fragment_Interactions_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

