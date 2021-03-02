from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ft01_Extract_Accessions_Py_V0_1_0 = CommandToolBuilder(tool="ft01_extract_accessions.py", base_command=["ft01_extract_accessions.py"], inputs=[ToolInput(tag="in_csv", input_type=String(), position=0, doc=InputDocumentation(doc="CSV of ortholog results, first column must be queries with\nheader Accession, remaining columns should be orthology results\nwith one organism per column"))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ft01_Extract_Accessions_Py_V0_1_0().translate("wdl")

