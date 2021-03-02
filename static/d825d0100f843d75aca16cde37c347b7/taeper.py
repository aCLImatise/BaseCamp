from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Float, Boolean, String

Taeper_V0_1_0 = CommandToolBuilder(tool="taeper", base_command=["taeper"], inputs=[ToolInput(tag="in_input_dir", input_type=Directory(optional=True), prefix="--input_dir", doc=InputDocumentation(doc="Directory where files are located.")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Provide a prebuilt index file to skip indexing. Be\naware that paths within an index file are relative to\nthe current working directory when they were built.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Directory to copy the files to. If not specified, will\ngenerate the index file only.")), ToolInput(tag="in_scale", input_type=Float(optional=True), prefix="--scale", doc=InputDocumentation(doc="Amount to scale the timing by. i.e scale of 10 will\ndeposit the reads 10x fatser than they were generated.\n(Default = 1.0)")), ToolInput(tag="in_dump_index", input_type=File(optional=True), prefix="--dump_index", doc=InputDocumentation(doc="Path to save index as. Default is 'taeper_index.npy'\nin current working directory. Note: Paths in the index\nare relative to the current working directory.")), ToolInput(tag="in_no_index", input_type=Boolean(optional=True), prefix="--no_index", doc=InputDocumentation(doc="Dont write the index list to file. This will mean it\nneeds regenerating for this dataset on each run.")), ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="Level of logging. 0 is none, 5 is for debugging.\nDefault is 4 which will report info, warnings, errors,\nand critical information.")), ToolInput(tag="in_no_progress_bar", input_type=Boolean(optional=True), prefix="--no_progress_bar", doc=InputDocumentation(doc="Do not display progress bar."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taeper_V0_1_0().translate("wdl", allow_empty_container=True)

