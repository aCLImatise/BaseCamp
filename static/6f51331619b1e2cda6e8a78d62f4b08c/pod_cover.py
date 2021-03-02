from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pod_Cover_V0_1_0 = CommandToolBuilder(tool="pod_cover", base_command=["pod_cover"], inputs=[], outputs=[], container="quay.io/biocontainers/perl-sanger-cgp-allelecount:4.2.1--pl526h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pod_Cover_V0_1_0().translate("wdl")

