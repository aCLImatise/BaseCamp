from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Collectgridssmetricsandextractfullreads_V0_1_0 = CommandToolBuilder(tool="CollectGridssMetricsAndExtractFullReads", base_command=["CollectGridssMetricsAndExtractFullReads"], inputs=[], outputs=[], container="quay.io/biocontainers/gridss:2.10.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collectgridssmetricsandextractfullreads_V0_1_0().translate("wdl")

