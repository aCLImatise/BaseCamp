from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Extract_Go_Assignments_From_Trinotate_Xls_Pl_V0_1_0 = CommandToolBuilder(tool="extract_GO_assignments_from_Trinotate_xls.pl", base_command=["extract_GO_assignments_from_Trinotate_xls.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Go_Assignments_From_Trinotate_Xls_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

