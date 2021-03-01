from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Guppy_Merge_V0_1_0 = CommandToolBuilder(tool="guppy_merge", base_command=["guppy", "merge"], inputs=[ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_split_csv", input_type=File(optional=True), prefix="--split-csv", doc=InputDocumentation(doc="Write out a csv file indicating the source of each read in the combined placefile.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_merge", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_place_files", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_split_csv", output_type=File(optional=True), selector=InputSelector(input_to_select="in_split_csv", type_hint=File()), doc=OutputDocumentation(doc="Write out a csv file indicating the source of each read in the combined placefile."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

