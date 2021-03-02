from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, Int, String, File, Boolean

Fast5Seek_V0_1_0 = CommandToolBuilder(tool="fast5seek", base_command=["fast5seek"], inputs=[ToolInput(tag="in_fast_five_dir", input_type=Array(t=Int(), optional=True), prefix="--fast5_dir", doc=InputDocumentation(doc="Directory of fast5 files you want to query. Program\nwill walk recursively through subdirectories.")), ToolInput(tag="in_reference", input_type=Array(t=String(), optional=True), prefix="--reference", doc=InputDocumentation(doc="Fastq or BAM/SAM file(s).")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Filename to write fast5 paths to. If nothing is\nentered, it will write the paths to STDOUT.")), ToolInput(tag="in_mapped", input_type=Boolean(optional=True), prefix="--mapped", doc=InputDocumentation(doc="Only extract read ids for mapped reads in BAM/SAM")), ToolInput(tag="in_no_progress_bar", input_type=Boolean(optional=True), prefix="--no_progress_bar", doc=InputDocumentation(doc="Do not display progress bar.")), ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="")), ToolInput(tag="in_files_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--log_level {0,1,2,3,4,5}"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fast5Seek_V0_1_0().translate("wdl", allow_empty_container=True)

