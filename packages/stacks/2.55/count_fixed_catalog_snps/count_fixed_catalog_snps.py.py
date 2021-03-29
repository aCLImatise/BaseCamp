from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Count_Fixed_Catalog_Snps_Py_V0_1_0 = CommandToolBuilder(tool="count_fixed_catalog_snps.py", base_command=["count_fixed_catalog_snps.py"], inputs=[], outputs=[], container="quay.io/biocontainers/stacks:2.55--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Count_Fixed_Catalog_Snps_Py_V0_1_0().translate("wdl")

