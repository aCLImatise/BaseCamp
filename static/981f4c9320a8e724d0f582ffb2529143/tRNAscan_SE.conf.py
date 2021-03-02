from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Trnascan_Se_Conf_V0_1_0 = CommandToolBuilder(tool="tRNAscan_SE.conf", base_command=["tRNAscan-SE.conf"], inputs=[], outputs=[], container="quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trnascan_Se_Conf_V0_1_0().translate("wdl")

