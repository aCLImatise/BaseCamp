from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gvf_Iit_V0_1_0 = CommandToolBuilder(tool="gvf_iit", base_command=["gvf_iit"], inputs=[], outputs=[], container="quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gvf_Iit_V0_1_0().translate("wdl")

