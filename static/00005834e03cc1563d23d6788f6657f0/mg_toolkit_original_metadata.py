from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String

Mg_Toolkit_Original_Metadata_V0_1_0 = CommandToolBuilder(tool="mg_toolkit_original_metadata", base_command=["mg-toolkit", "original_metadata"], inputs=[ToolInput(tag="in_accession", input_type=Array(t=String(), optional=True), prefix="--accession", doc=InputDocumentation(doc="Provide study accession, e.g. PRJEB1787 or ERP001736.\n"))], outputs=[], container="quay.io/biocontainers/mg-toolkit:0.10.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mg_Toolkit_Original_Metadata_V0_1_0().translate("wdl")

