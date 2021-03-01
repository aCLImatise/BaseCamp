from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean, String

Vsnp_Remove_From_Analysis_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_remove_from_analysis.py", base_command=["vsnp_remove_from_analysis.py"], inputs=[ToolInput(tag="in_codes", input_type=File(optional=True), prefix="--codes", doc=InputDocumentation(doc="Excel file containing samples to remove from analysis\nColumn 1: to match sample name minus extension. No\nheader allowed")), ToolInput(tag="in_cwd", input_type=Directory(optional=True), prefix="--cwd", doc=InputDocumentation(doc="Optional: path to VCF files")), ToolInput(tag="in_extension", input_type=File(optional=True), prefix="--extension", doc=InputDocumentation(doc="File extension type to be renamed")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Remove_From_Analysis_Py_V0_1_0().translate("wdl", allow_empty_container=True)

