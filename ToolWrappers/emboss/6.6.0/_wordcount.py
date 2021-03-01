from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Wordcount_V0_1_0 = CommandToolBuilder(tool="_wordcount", base_command=["_wordcount"], inputs=[ToolInput(tag="in_word_size", input_type=Boolean(optional=True), prefix="-wordsize", doc=InputDocumentation(doc="integer    [@($(acdprotein)? 2 : 4)] Word size (Integer\n1 or more)")), ToolInput(tag="in_min_count", input_type=Boolean(optional=True), prefix="-mincount", doc=InputDocumentation(doc="integer    [1] Minimum word count to report (Integer 1\nor more)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Wordcount_V0_1_0().translate("wdl", allow_empty_container=True)

