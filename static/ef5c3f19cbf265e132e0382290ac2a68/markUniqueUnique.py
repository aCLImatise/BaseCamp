from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Markuniqueunique_V0_1_0 = CommandToolBuilder(tool="markUniqueUnique", base_command=["markUniqueUnique"], inputs=[ToolInput(tag="in_path_asm_file", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="path to the assembly .asm file")), ToolInput(tag="in_version_path_modify", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="version   path to the tigStore and version to modify")), ToolInput(tag="in_minimum_size_default", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="minimum size of a unitig to be toggled, default=2000)")), ToolInput(tag="in_number_instances_surrogate", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="number of instances of a surrogate that is toggled, default = 1")), ToolInput(tag="in_max_number_bases", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="max number of bases the surrogate can be from the end of a scaffold for toggling, default = 1000")), ToolInput(tag="in_version", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Markuniqueunique_V0_1_0().translate("wdl", allow_empty_container=True)

