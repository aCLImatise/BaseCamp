from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Config_Yaml_V0_1_0 = CommandToolBuilder(tool="config.yaml", base_command=["config.yaml"], inputs=[], outputs=[], container="quay.io/biocontainers/atlas-data-import:0.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Config_Yaml_V0_1_0().translate("wdl")

