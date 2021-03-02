from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Matrix_From_Patterns_V0_1_0 = CommandToolBuilder(tool="rsat_matrix_from_patterns", base_command=["rsat", "matrix-from-patterns"], inputs=[ToolInput(tag="in_matrix_from_patterns", input_type=String(), position=0, doc=InputDocumentation(doc="[1mDESCRIPTION[0m")), ToolInput(tag="in_jvheldenatulbdotacdotbe", input_type=String(), position=0, doc=InputDocumentation(doc="[1mCATEGORY[0m")), ToolInput(tag="in_sequences", input_type=String(), position=1, doc=InputDocumentation(doc="motif discovery")), ToolInput(tag="in_dyad_analysis_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-toppat #[0m")), ToolInput(tag="in_strands", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-1str[0m use a single strand to build the motifs")), ToolInput(tag="in_ones_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m-sites[0m")), ToolInput(tag="in_pss_mdot", input_type=String(), position=0, doc=InputDocumentation(doc="[1m[33mmatrix-scan[0m[0m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Matrix_From_Patterns_V0_1_0().translate("wdl", allow_empty_container=True)

