from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Add_Gff_Info_Kegg_V0_1_0 = CommandToolBuilder(tool="add_gff_info_kegg", base_command=["add-gff-info", "kegg"], inputs=[ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Contact email  [required]")), ToolInput(tag="in_description", input_type=Boolean(optional=True), prefix="--description", doc=InputDocumentation(doc="Add Kegg description")), ToolInput(tag="in_pathways", input_type=Boolean(optional=True), prefix="--pathways", doc=InputDocumentation(doc="Add pathways ID involved")), ToolInput(tag="in_kegg_id", input_type=String(optional=True), prefix="--kegg-id", doc=InputDocumentation(doc="In which attribute the Kegg ID is stored (defaults to\n*gene_id*)")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Gff_Info_Kegg_V0_1_0().translate("wdl", allow_empty_container=True)

