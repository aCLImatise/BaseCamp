from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Product_Types_Tsv_V0_1_0 = CommandToolBuilder(tool="product_types.tsv", base_command=["product_types.tsv"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Product_Types_Tsv_V0_1_0().translate("wdl", allow_empty_container=True)

