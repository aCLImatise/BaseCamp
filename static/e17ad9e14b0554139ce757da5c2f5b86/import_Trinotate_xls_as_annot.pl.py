from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Import_Trinotate_Xls_As_Annot_Pl_V0_1_0 = CommandToolBuilder(tool="import_Trinotate_xls_as_annot.pl", base_command=["import_Trinotate_xls_as_annot.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Import_Trinotate_Xls_As_Annot_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

