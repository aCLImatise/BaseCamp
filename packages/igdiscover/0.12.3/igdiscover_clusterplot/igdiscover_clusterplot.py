from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File, Directory

Igdiscover_Clusterplot_V0_1_0 = CommandToolBuilder(tool="igdiscover_clusterplot", base_command=["igdiscover", "clusterplot"], inputs=[ToolInput(tag="in_minimum_group_size", input_type=Int(optional=True), prefix="--minimum-group-size", doc=InputDocumentation(doc="Do not plot if there are less than N sequences for a\ngene. Default: 200")), ToolInput(tag="in_gene", input_type=String(optional=True), prefix="--gene", doc=InputDocumentation(doc="Plot GENE. Can be given multiple times. Default: Plot\nall genes.")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Gene type. Default: V")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="Show at most N sequences (with a matrix of size N x\nN). Default: 300")), ToolInput(tag="in_ignore_j", input_type=Boolean(optional=True), prefix="--ignore-J", doc=InputDocumentation(doc="Include also rows without J assignment or J%SHM>0.")), ToolInput(tag="in_dpi", input_type=File(optional=True), prefix="--dpi", doc=InputDocumentation(doc="Resolution of output file. Default: 200")), ToolInput(tag="in_no_title", input_type=Boolean(optional=True), prefix="--no-title", doc=InputDocumentation(doc="Do not add a title to the plot")), ToolInput(tag="in_table", input_type=String(), position=0, doc=InputDocumentation(doc="Table with parsed and filtered IgBLAST results")), ToolInput(tag="in_directory", input_type=Directory(), position=1, doc=InputDocumentation(doc="Save clustermaps as PNG into this directory"))], outputs=[ToolOutput(tag="out_dpi", output_type=File(optional=True), selector=InputSelector(input_to_select="in_dpi", type_hint=File()), doc=OutputDocumentation(doc="Resolution of output file. Default: 200"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Clusterplot_V0_1_0().translate("wdl", allow_empty_container=True)

