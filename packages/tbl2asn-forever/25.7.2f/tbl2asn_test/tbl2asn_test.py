from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tbl2Asn_Test_V0_1_0 = CommandToolBuilder(tool="tbl2asn_test", base_command=["tbl2asn-test"], inputs=[], outputs=[], container="quay.io/biocontainers/tbl2asn-forever:25.7.2f--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tbl2Asn_Test_V0_1_0().translate("wdl")

