from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rppr_Ref_Tree_V0_1_0 = CommandToolBuilder(tool="rppr_ref_tree", base_command=["rppr", "ref_tree"], inputs=[ToolInput(tag="in_reference_package_path", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Reference package path. Required.")), ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_node_numbers", input_type=Boolean(optional=True), prefix="--node-numbers", doc=InputDocumentation(doc="Put the node numbers in where the bootstraps usually go.")), ToolInput(tag="in_painted", input_type=Boolean(optional=True), prefix="--painted", doc=InputDocumentation(doc="Use a painted tree in place of the taxonomically annotated tree.")), ToolInput(tag="in_rank_colored", input_type=Boolean(optional=True), prefix="--rank-colored", doc=InputDocumentation(doc="Include a tree for each rank with taxonomic annotations on every edge.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_ref_tree", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rppr_Ref_Tree_V0_1_0().translate("wdl", allow_empty_container=True)

