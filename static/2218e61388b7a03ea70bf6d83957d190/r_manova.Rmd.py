from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


R_Manova_Rmd_V0_1_0 = CommandToolBuilder(tool="r_manova.Rmd", base_command=["r_manova.Rmd"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    R_Manova_Rmd_V0_1_0().translate("wdl", allow_empty_container=True)

