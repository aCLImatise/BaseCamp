from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Changelog_Md_V0_1_0 = CommandToolBuilder(tool="CHANGELOG.md", base_command=["CHANGELOG.md"], inputs=[], outputs=[], container="quay.io/biocontainers/bismark:0.23.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Changelog_Md_V0_1_0().translate("wdl")

