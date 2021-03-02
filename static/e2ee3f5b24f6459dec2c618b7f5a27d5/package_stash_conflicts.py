from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Package_Stash_Conflicts_V0_1_0 = CommandToolBuilder(tool="package_stash_conflicts", base_command=["package-stash-conflicts"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Package_Stash_Conflicts_V0_1_0().translate("wdl", allow_empty_container=True)

