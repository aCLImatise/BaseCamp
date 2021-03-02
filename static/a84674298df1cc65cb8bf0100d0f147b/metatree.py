from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Metatree_V0_1_0 = CommandToolBuilder(tool="metatree", base_command=["metatree"], inputs=[ToolInput(tag="in_batch_file", input_type=String(), position=0, doc=InputDocumentation(doc="First tree must be the reference tree, format:\nid<tab>path_to_tree")), ToolInput(tag="in_out_dir", input_type=String(), position=1, doc=InputDocumentation(doc="path to the output directory")), ToolInput(tag="in_taxonomy_file", input_type=String(), position=2, doc=InputDocumentation(doc="path to taxonomy file, format: gid<tab>taxonomy")), ToolInput(tag="in_out_group", input_type=String(), position=3, doc=InputDocumentation(doc="outgroup for rooting")), ToolInput(tag="in_cpus", input_type=String(), position=4, doc=InputDocumentation(doc="number of CPUs to use"))], outputs=[], container="quay.io/biocontainers/metatree:0.0.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metatree_V0_1_0().translate("wdl")

