from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Snpiphy_Generate_Input_List_V0_1_0 = CommandToolBuilder(tool="snpiphy_generate_input_list", base_command=["snpiphy_generate_input_list"], inputs=[], outputs=[], container="quay.io/biocontainers/snpiphy:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpiphy_Generate_Input_List_V0_1_0().translate("wdl")

