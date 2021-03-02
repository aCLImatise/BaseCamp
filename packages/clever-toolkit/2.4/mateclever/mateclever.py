from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, Directory, Float

Mateclever_V0_1_0 = CommandToolBuilder(tool="mateclever", base_command=["mateclever"], inputs=[ToolInput(tag="in_threads", input_type=String(optional=True), prefix="-T", doc=InputDocumentation(doc="Threads.")), ToolInput(tag="in_maximum_deletion_length", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="Maximum deletion length to look for (default: 10000).")), ToolInput(tag="in_delete_old_result", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Delete old result and working directory first (if\npresent).")), ToolInput(tag="in_working_directory_default", input_type=Directory(optional=True), prefix="-w", doc=InputDocumentation(doc="Working directory (default: <result-directory>/work).")), ToolInput(tag="in_keep_working_directory", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Keep working directory (default: delete directory when\nfinished).")), ToolInput(tag="in_minimum_expected_support", input_type=Float(optional=True), prefix="-W", doc=InputDocumentation(doc="Minimum expected support for a SNP in order to ignore\nmismatches at that position (default: 3.0).")), ToolInput(tag="in_maximum_center_distance", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Maximum center distance between split-read and read-\npair deletion to be considered identical (default:\n100).")), ToolInput(tag="in_maximum_length_difference", input_type=Int(optional=True), prefix="-z", doc=InputDocumentation(doc="Maximum length difference between split-read and read-\npair deletion to be considered identical (default:\n20).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mateclever_V0_1_0().translate("wdl", allow_empty_container=True)

