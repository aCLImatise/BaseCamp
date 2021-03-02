from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Product_Caps_Tsv_V0_1_0 = CommandToolBuilder(tool="product_caps.tsv", base_command=["product_caps.tsv"], inputs=[], outputs=[], container="quay.io/biocontainers/morpheus:287--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Product_Caps_Tsv_V0_1_0().translate("wdl")

