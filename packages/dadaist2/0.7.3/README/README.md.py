from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Readme_Md_V0_1_0 = CommandToolBuilder(tool="README.md", base_command=["README.md"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readme_Md_V0_1_0().translate("wdl")

