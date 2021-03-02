from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Collectgridssmetricsandextractsvreads_V0_1_0 = CommandToolBuilder(tool="CollectGridssMetricsAndExtractSVReads", base_command=["CollectGridssMetricsAndExtractSVReads"], inputs=[], outputs=[], container="quay.io/biocontainers/gridss:2.10.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collectgridssmetricsandextractsvreads_V0_1_0().translate("wdl")

