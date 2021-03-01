from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Indexer_V0_1_0 = CommandToolBuilder(tool="indexer", base_command=["indexer"], inputs=[ToolInput(tag="in_skip_skip_junk", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="|skip      skip junk [1]")), ToolInput(tag="in_tail_tail_pattern", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="|tail      tail pattern [^>]")), ToolInput(tag="in_included_tail_pattern", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="|included  tail pattern is part of entry [0]")), ToolInput(tag="in_pattern_d_pattern", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="|pattern   id selection pattern [^>[^|]+\|([^\s|;]+)]")), ToolInput(tag="in_multiple_indices_entry", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="multiple indices per entry [0]")), ToolInput(tag="in_idlength_maximum_i", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="|idLength  maximum id length [14]")), ToolInput(tag="in_lp", input_type=Boolean(optional=True), prefix="-lp", doc=InputDocumentation(doc="maximum position length [10]")), ToolInput(tag="in_ll", input_type=Boolean(optional=True), prefix="-ll", doc=InputDocumentation(doc="maximum size length [6]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Indexer_V0_1_0().translate("wdl", allow_empty_container=True)

