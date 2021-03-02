from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Getpartofpromoter_Pl_V0_1_0 = CommandToolBuilder(tool="getPartOfPromoter.pl", base_command=["getPartOfPromoter.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getpartofpromoter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

