from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Isotope_Dat_V0_1_0 = CommandToolBuilder(tool="ISOTOPE.DAT", base_command=["ISOTOPE.DAT"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isotope_Dat_V0_1_0().translate("wdl", allow_empty_container=True)

