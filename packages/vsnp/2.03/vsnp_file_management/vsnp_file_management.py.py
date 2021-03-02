from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Vsnp_File_Management_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_file_management.py", base_command=["vsnp_file_management.py"], inputs=[ToolInput(tag="in_codes", input_type=File(optional=True), prefix="--codes", doc=InputDocumentation(doc="Excel file containing genotype code Column 1: to match\nsample name minus everything left of first occurring _\nor . Column 2: New name")), ToolInput(tag="in_extension", input_type=File(optional=True), prefix="--extension", doc=InputDocumentation(doc="File extension type to be renamed")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_File_Management_Py_V0_1_0().translate("wdl", allow_empty_container=True)

