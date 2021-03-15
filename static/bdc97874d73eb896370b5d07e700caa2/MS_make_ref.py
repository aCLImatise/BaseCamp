from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Ms_Make_Ref_V0_1_0 = CommandToolBuilder(tool="MS_make_ref", base_command=["MS-make-ref"], inputs=[ToolInput(tag="in_tree_file_newick", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="tree file (newick format)")), ToolInput(tag="in_taxonomy_annotation_file", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="taxonomy annotation file (tabular format)")), ToolInput(tag="in_reference_name_default", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="reference name, default is 'tree.dms'")), ToolInput(tag="in_value", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dms:1.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ms_Make_Ref_V0_1_0().translate("wdl")

