from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Array, String, Directory, Int

Orsum_Py_V0_1_0 = CommandToolBuilder(tool="orsum.py", base_command=["orsum.py"], inputs=[ToolInput(tag="in_gmt", input_type=File(optional=True), prefix="--gmt", doc=InputDocumentation(doc="path for the the GMT file")), ToolInput(tag="in_hierarchy_file", input_type=File(optional=True), prefix="--hierarchyFile", doc=InputDocumentation(doc="path for the hierarchy file")), ToolInput(tag="in_create_hf", input_type=Boolean(optional=True), prefix="--createHF", doc=InputDocumentation(doc="Creates the hierarchy file when this is written,\notherwise tries to read, if absent creates it.")), ToolInput(tag="in_files", input_type=Array(t=String(), optional=True), prefix="--files", doc=InputDocumentation(doc="paths for the enrichment result files")), ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--outputFolder", doc=InputDocumentation(doc="paths for the enrichment result files")), ToolInput(tag="in_rules", input_type=Boolean(optional=True), prefix="--rules", doc=InputDocumentation(doc="[RULES ...]   List of ordered numbers of the rules to apply while\nsummarizing. First rule is numbered 1. It should be\nrun first.")), ToolInput(tag="in_max_rep_size", input_type=Int(optional=True), prefix="--maxRepSize", doc=InputDocumentation(doc="The maximum size of a representative term. Terms\nbigger than this will not be discarded but also will\nnot be used to represent other terms\n"))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="paths for the enrichment result files"))], container="quay.io/biocontainers/orsum:1.0.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orsum_Py_V0_1_0().translate("wdl")

