from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Int, Boolean, String

Single_To_Multi_Fast5_V0_1_0 = CommandToolBuilder(tool="single_to_multi_fast5", base_command=["single_to_multi_fast5"], inputs=[ToolInput(tag="in_input_path", input_type=File(optional=True), prefix="--input_path", doc=InputDocumentation(doc="Folder containing single read fast5 files")), ToolInput(tag="in_save_path", input_type=Directory(optional=True), prefix="--save_path", doc=InputDocumentation(doc="Folder to output multi read files to")), ToolInput(tag="in_filename_base", input_type=File(optional=True), prefix="--filename_base", doc=InputDocumentation(doc="Root of output filename, default='batch' ->\n'batch_0.fast5'")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="--batch_size", doc=InputDocumentation(doc="Number of reads per multi-read file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Search recursively through folders for single_read\nfast5 files")), ToolInput(tag="in_ignore_symlinks", input_type=Boolean(optional=True), prefix="--ignore_symlinks", doc=InputDocumentation(doc="Ignore symlinks when searching recursively for fast5")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="-c {vbz,vbz_legacy_v0,gzip,None}, --compression {vbz,vbz_legacy_v0,gzip,None}"))], outputs=[ToolOutput(tag="out_save_path", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_save_path", type_hint=File()), doc=OutputDocumentation(doc="Folder to output multi read files to")), ToolOutput(tag="out_filename_base", output_type=File(optional=True), selector=InputSelector(input_to_select="in_filename_base", type_hint=File()), doc=OutputDocumentation(doc="Root of output filename, default='batch' ->\n'batch_0.fast5'"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Single_To_Multi_Fast5_V0_1_0().translate("wdl", allow_empty_container=True)

