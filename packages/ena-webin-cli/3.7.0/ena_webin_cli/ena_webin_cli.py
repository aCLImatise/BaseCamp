from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ena_Webin_Cli_V0_1_0 = CommandToolBuilder(tool="ena_webin_cli", base_command=["ena-webin-cli"], inputs=[], outputs=[], container="quay.io/biocontainers/ena-webin-cli:3.7.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ena_Webin_Cli_V0_1_0().translate("wdl")

