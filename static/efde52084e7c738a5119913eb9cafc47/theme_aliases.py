from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Theme_Aliases_V0_1_0 = CommandToolBuilder(tool="theme_aliases", base_command=["theme-aliases"], inputs=[], outputs=[], container="quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Theme_Aliases_V0_1_0().translate("wdl")

