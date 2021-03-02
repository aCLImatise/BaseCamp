from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Metadata_Conda_Debug_Yaml_V0_1_0 = CommandToolBuilder(tool="metadata_conda_debug.yaml", base_command=["metadata_conda_debug.yaml"], inputs=[], outputs=[], container="quay.io/biocontainers/gifrop:0.0.6--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metadata_Conda_Debug_Yaml_V0_1_0().translate("wdl")

