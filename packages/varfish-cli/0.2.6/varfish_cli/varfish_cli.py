from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Varfish_Cli_V0_1_0 = CommandToolBuilder(tool="varfish_cli", base_command=["varfish-cli"], inputs=[], outputs=[], container="quay.io/biocontainers/varfish-cli:0.2.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varfish_Cli_V0_1_0().translate("wdl")

