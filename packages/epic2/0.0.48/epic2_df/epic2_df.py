from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Epic2_Df_V0_1_0 = CommandToolBuilder(tool="epic2_df", base_command=["epic2-df"], inputs=[], outputs=[], container="quay.io/biocontainers/epic2:0.0.48--py37hd0e48df_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Epic2_Df_V0_1_0().translate("wdl")

