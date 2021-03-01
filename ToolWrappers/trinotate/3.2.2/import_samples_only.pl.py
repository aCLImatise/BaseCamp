from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Import_Samples_Only_Pl_V0_1_0 = CommandToolBuilder(tool="import_samples_only.pl", base_command=["import_samples_only.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Import_Samples_Only_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

