from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Atlas_Validation_Py_V0_1_0 = CommandToolBuilder(tool="atlas_validation.py", base_command=["atlas_validation.py"], inputs=[ToolInput(tag="in_data_dir", input_type=File(optional=True), prefix="--data_dir", doc=InputDocumentation(doc="Path to the directory with SDRF and data files")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Option to output detailed logging (debug level).")), ToolInput(tag="in_hca", input_type=Boolean(optional=True), prefix="-hca", doc=InputDocumentation(doc="Mark experiment as HCA import")), ToolInput(tag="in_single_cell", input_type=Boolean(optional=True), prefix="--singlecell", doc=InputDocumentation(doc="Force submission type to be 'singlecell'")), ToolInput(tag="in_sequencing", input_type=Boolean(optional=True), prefix="--sequencing", doc=InputDocumentation(doc="Force submission type to be 'sequencing'")), ToolInput(tag="in_microarray", input_type=Boolean(optional=True), prefix="--microarray", doc=InputDocumentation(doc="Force submission type to be 'microarray'")), ToolInput(tag="in_skip_file_checks", input_type=Boolean(optional=True), prefix="--skip-file-checks", doc=InputDocumentation(doc="Skip file and URI checks\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Atlas_Validation_Py_V0_1_0().translate("wdl", allow_empty_container=True)

