from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Split_Scaffolds_To_Subcontigs_Pl_V0_1_0 = CommandToolBuilder(tool="split_scaffolds_to_subcontigs.pl", base_command=["split_scaffolds_to_subcontigs.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Scaffolds_To_Subcontigs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

