from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Array, String

Phyluce_Probe_Get_Clusters_From_Bed_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_get_clusters_from_bed", base_command=["phyluce_probe_get_clusters_from_bed"], inputs=[ToolInput(tag="in_bed", input_type=Directory(optional=True), prefix="--bed", doc=InputDocumentation(doc="The BED directory you want to search for clusters")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="The output directory to store results")), ToolInput(tag="in_files", input_type=Array(t=String(), optional=True), prefix="--files", doc=InputDocumentation(doc="Specific files in the directory you want to process\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="The output directory to store results"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Get_Clusters_From_Bed_V0_1_0().translate("wdl", allow_empty_container=True)

