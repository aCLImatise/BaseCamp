from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gensub2_V0_1_0 = CommandToolBuilder(tool="gensub2", base_command=["gensub2"], inputs=[ToolInput(tag="in_group_one", input_type=Boolean(optional=True), prefix="-group1", doc=InputDocumentation(doc="- write elements in order Aa Ab Ac Ba Bb Bc Ca Cb Cc")), ToolInput(tag="in_group_two", input_type=Boolean(optional=True), prefix="-group2", doc=InputDocumentation(doc="- write elements in order Aa Ba Ca Ab Bb Cb Ac Bc Cc")), ToolInput(tag="in_file_list_one", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_list_two", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_template_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gensub2_V0_1_0().translate("wdl", allow_empty_container=True)

