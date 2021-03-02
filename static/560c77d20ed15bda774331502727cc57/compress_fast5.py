from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, Boolean, String, Int

Compress_Fast5_V0_1_0 = CommandToolBuilder(tool="compress_fast5", base_command=["compress_fast5"], inputs=[ToolInput(tag="in_input_path", input_type=File(optional=True), prefix="--input_path", doc=InputDocumentation(doc="Folder containing single read fast5 files")), ToolInput(tag="in_save_path", input_type=Directory(optional=True), prefix="--save_path", doc=InputDocumentation(doc="Folder to output multi read files to")), ToolInput(tag="in_in_place", input_type=Boolean(optional=True), prefix="--in_place", doc=InputDocumentation(doc="Replace the old files with new files in place")), ToolInput(tag="in_compression", input_type=String(optional=True), prefix="--compression", doc=InputDocumentation(doc="Target output compression type")), ToolInput(tag="in_sanitize", input_type=Boolean(optional=True), prefix="--sanitize", doc=InputDocumentation(doc="Clean output files of optional groups and datasets\n(e.g. 'Analyses')")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Maximum number of threads to use")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Search recursively through folders for single_read\nfast5 files")), ToolInput(tag="in_ignore_symlinks", input_type=Boolean(optional=True), prefix="--ignore_symlinks", doc=InputDocumentation(doc="Ignore symlinks when searching recursively for fast5")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="-v, --version         show program's version number and exit"))], outputs=[ToolOutput(tag="out_save_path", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_save_path", type_hint=File()), doc=OutputDocumentation(doc="Folder to output multi read files to"))], container="quay.io/biocontainers/ont-fast5-api:3.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compress_Fast5_V0_1_0().translate("wdl")

