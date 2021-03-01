from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Trnascan_Se_Conf_V0_1_0 = CommandToolBuilder(tool="tRNAscan_SE.conf", base_command=["tRNAscan-SE.conf"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trnascan_Se_Conf_V0_1_0().translate("wdl", allow_empty_container=True)

