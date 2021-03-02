from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Snpsift_Join_V0_1_0 = CommandToolBuilder(tool="SnpSift_join", base_command=["SnpSift", "join"], inputs=[ToolInput(tag="in_if_one", input_type=Int(optional=True), prefix="-if1", doc=InputDocumentation(doc=": Offset for file1 (e.g. 1 if coordinates are one-based. Default: 1")), ToolInput(tag="in_if_two", input_type=Int(optional=True), prefix="-if2", doc=InputDocumentation(doc=": Offset for file2 (e.g. 2 if coordinates are one-based. Default: 1")), ToolInput(tag="in_cols_one", input_type=Int(optional=True), prefix="-cols1", doc=InputDocumentation(doc=": Column definition for file 1. Format: chrCol,startCol,endCol (e.g. '1,2,3'). Shortcuts 'bed' or 'vcf' are allowed. Default: 'vcf'")), ToolInput(tag="in_cols_two", input_type=Int(optional=True), prefix="-cols2", doc=InputDocumentation(doc=": Column definition for file 2. Format: chrCol,startCol,endCol (e.g. '1,2,3'). Shortcuts 'bed' or 'vcf' are allowed. Default: 'vcf'")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="-all", doc=InputDocumentation(doc=": For each interval, show all intersecting. Default: show only one (largest intersection)")), ToolInput(tag="in_closest", input_type=Boolean(optional=True), prefix="-closest", doc=InputDocumentation(doc=": Show closest intervals in file2 if none intersect. Default: off")), ToolInput(tag="in_empty", input_type=Boolean(optional=True), prefix="-empty", doc=InputDocumentation(doc=": Show intervals in file1 even if they do not intersect with any other interval. Default: off")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_join", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_one", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_two", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Join_V0_1_0().translate("wdl", allow_empty_container=True)

