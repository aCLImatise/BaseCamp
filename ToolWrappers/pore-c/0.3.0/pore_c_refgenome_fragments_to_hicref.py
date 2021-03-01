from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pore_C_Refgenome_Fragments_To_Hicref_V0_1_0 = CommandToolBuilder(tool="pore_c_refgenome_fragments_to_hicref", base_command=["pore_c", "refgenome", "fragments-to-hicref"], inputs=[ToolInput(tag="in_fragments_parquet", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hi_cref", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Refgenome_Fragments_To_Hicref_V0_1_0().translate("wdl")

