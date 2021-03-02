from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean, File

Lorikeet_Merge_Spoligotypes_V0_1_0 = CommandToolBuilder(tool="lorikeet_merge_spoligotypes", base_command=["lorikeet", "merge-spoligotypes"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="Input directory that contains all spoligotype files. You can specify multiple -i arguments")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output prefix")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Search input directories recursively [Default=true]")), ToolInput(tag="in_pattern", input_type=File(optional=True), prefix="--pattern", doc=InputDocumentation(doc="File name pattern for the input files. [Default='.*.spoligotype]'\n")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_merge_sp_oligo_types", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lorikeet_Merge_Spoligotypes_V0_1_0().translate("wdl", allow_empty_container=True)

