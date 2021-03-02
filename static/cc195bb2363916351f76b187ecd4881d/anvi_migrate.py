from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Anvi_Migrate_V0_1_0 = CommandToolBuilder(tool="anvi_migrate", base_command=["anvi-migrate"], inputs=[], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Migrate_V0_1_0().translate("wdl")

