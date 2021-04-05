from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gffjunc_To_Bed12_Py_Gff_V0_1_0 = CommandToolBuilder(tool="gffjunc_to_bed12.py_gff", base_command=["gffjunc_to_bed12.py", "gff"], inputs=[ToolInput(tag="in_gff", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mikado:2.2.3--py38h6ed170a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gffjunc_To_Bed12_Py_Gff_V0_1_0().translate("wdl")

