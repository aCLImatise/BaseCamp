from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Wordmatch_V0_1_0 = CommandToolBuilder(tool="wordmatch", base_command=["wordmatch"], inputs=[ToolInput(tag="in_word_size", input_type=Boolean(optional=True), prefix="-wordsize", doc=InputDocumentation(doc="integer    [4] Word size (Integer 2 or more)")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="-logfile", doc=InputDocumentation(doc="outfile    [wordmatch.log] Statistics on distribution\nof kmers and matches"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wordmatch_V0_1_0().translate("wdl", allow_empty_container=True)

