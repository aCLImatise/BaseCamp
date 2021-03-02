from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Readme_Rmd_V0_1_0 = CommandToolBuilder(tool="README.Rmd", base_command=["README.Rmd"], inputs=[], outputs=[], container="quay.io/biocontainers/gifrop:0.0.6--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readme_Rmd_V0_1_0().translate("wdl")

