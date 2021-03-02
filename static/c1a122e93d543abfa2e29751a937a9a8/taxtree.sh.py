from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Taxtree_Sh_V0_1_0 = CommandToolBuilder(tool="taxtree.sh", base_command=["taxtree.sh"], inputs=[ToolInput(tag="in_x_mx", input_type=Boolean(optional=True), prefix="-Xmx", doc=InputDocumentation(doc="This will set Java's memory usage, overriding autodetection.\n-Xmx20g will specify 20 gigs of RAM.  The max is typically 85% of physical memory.")), ToolInput(tag="in_e_oom", input_type=Boolean(optional=True), prefix="-eoom", doc=InputDocumentation(doc="This flag will cause the process to exit if an out-of-memory\nexception occurs.  Requires Java 8u92+.")), ToolInput(tag="in_da", input_type=Boolean(optional=True), prefix="-da", doc=InputDocumentation(doc="Disable assertions.")), ToolInput(tag="in_names_dot_dmp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_nodes_dot_dmp", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_merged_dot_dmp", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_tree_dot_tax_tree_do_tgz", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bbmap:38.90--h1296035_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxtree_Sh_V0_1_0().translate("wdl")

