from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tigmint_Arcs_Tsv_Out_File_V0_1_0 = CommandToolBuilder(tool="tigmint_arcs_tsv_out_file", base_command=["tigmint-arcs-tsv", "out_file"], inputs=[ToolInput(tag="in_tig_mint_arcs_tsv", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_graph_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/tigmint:1.2.2--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tigmint_Arcs_Tsv_Out_File_V0_1_0().translate("wdl")

