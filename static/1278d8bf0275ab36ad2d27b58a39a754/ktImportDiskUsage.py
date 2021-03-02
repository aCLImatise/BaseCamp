from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ktimportdiskusage_V0_1_0 = CommandToolBuilder(tool="ktImportDiskUsage", base_command=["ktImportDiskUsage"], inputs=[], outputs=[], container="quay.io/biocontainers/krona:2.8--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktimportdiskusage_V0_1_0().translate("wdl")

