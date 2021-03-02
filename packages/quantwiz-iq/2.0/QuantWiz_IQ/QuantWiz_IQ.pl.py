from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Quantwiz_Iq_Pl_V0_1_0 = CommandToolBuilder(tool="QuantWiz_IQ.pl", base_command=["QuantWiz_IQ.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quantwiz_Iq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

