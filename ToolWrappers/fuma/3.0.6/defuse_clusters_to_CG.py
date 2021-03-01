from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Defuse_Clusters_To_Cg_V0_1_0 = CommandToolBuilder(tool="defuse_clusters_to_CG", base_command=["defuse-clusters-to-CG"], inputs=[ToolInput(tag="in_gene_annotation", input_type=File(optional=True), prefix="--gene-annotation", doc=InputDocumentation(doc="GTF-file used by defuse")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output filename; '-' for stdout\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Defuse cluster file"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output filename; '-' for stdout\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Defuse_Clusters_To_Cg_V0_1_0().translate("wdl", allow_empty_container=True)

