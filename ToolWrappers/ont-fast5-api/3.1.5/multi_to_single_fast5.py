from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean

Multi_To_Single_Fast5_V0_1_0 = CommandToolBuilder(tool="multi_to_single_fast5", base_command=["multi_to_single_fast5"], inputs=[ToolInput(tag="in_input_path", input_type=File(optional=True), prefix="--input_path", doc=InputDocumentation(doc="MultiRead fast5 file or path to directory of MultiRead\nfiles")), ToolInput(tag="in_save_path", input_type=Directory(optional=True), prefix="--save_path", doc=InputDocumentation(doc="Folder to output SingleRead fast5 files to")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Search recursively through folders for MultiRead fast5")), ToolInput(tag="in_ignore_symlinks", input_type=Boolean(optional=True), prefix="--ignore_symlinks", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_save_path", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_save_path", type_hint=File()), doc=OutputDocumentation(doc="Folder to output SingleRead fast5 files to"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multi_To_Single_Fast5_V0_1_0().translate("wdl", allow_empty_container=True)

