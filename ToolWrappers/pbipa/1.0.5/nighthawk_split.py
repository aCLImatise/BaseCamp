from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Nighthawk_Split_V0_1_0 = CommandToolBuilder(tool="nighthawk_split", base_command=["nighthawk", "split"], inputs=[ToolInput(tag="in_split_type", input_type=Boolean(optional=True), prefix="--split-type", doc=InputDocumentation(doc="STR   Type of splitting to perform. Valid choices: (nfiles,\novlpiles, noverlaps). [ovlpiles]")), ToolInput(tag="in_limit", input_type=Boolean(optional=True), prefix="--limit", doc=InputDocumentation(doc="INT   Number of files when split-type is 'nfiles', or\nnumber of piles when split-type is 'ovlpiles'. [1000]")), ToolInput(tag="in_num_threads", input_type=Boolean(optional=True), prefix="--num-threads", doc=InputDocumentation(doc="INT   Number of threads to use, 0 means autodetection. [0]")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR   Set log level. Valid choices: (TRACE, DEBUG, INFO,\nWARN, FATAL). [WARN]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE  Log to a file, instead of stderr.")), ToolInput(tag="in_chunk_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="STR   Output M4 files.")), ToolInput(tag="in_input_do_tm_four", input_type=Int(), position=1, doc=InputDocumentation(doc="STR   Input M4/overlap file to split."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nighthawk_Split_V0_1_0().translate("wdl", allow_empty_container=True)

