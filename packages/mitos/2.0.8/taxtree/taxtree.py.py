from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

Taxtree_Py_V0_1_0 = CommandToolBuilder(tool="taxtree.py", base_command=["taxtree.py"], inputs=[ToolInput(tag="in_gb_dir", input_type=Directory(optional=True), prefix="--gbdir", doc=InputDocumentation(doc="genbank directory")), ToolInput(tag="in_names", input_type=File(optional=True), prefix="--names", doc=InputDocumentation(doc="names.dmp file to use")), ToolInput(tag="in_nodes", input_type=File(optional=True), prefix="--nodes", doc=InputDocumentation(doc="nodes.dmp file to use")), ToolInput(tag="in_mergeddmp_file_use", input_type=File(optional=True), prefix="--merged", doc=InputDocumentation(doc="merged.dmp file to use")), ToolInput(tag="in_search_closest_mitogenomes", input_type=String(), position=0, doc=InputDocumentation(doc="search for closest mitogenomes"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxtree_Py_V0_1_0().translate("wdl", allow_empty_container=True)

