from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Genewisedb_V0_1_0 = CommandToolBuilder(tool="genewisedb", base_command=["genewisedb"], inputs=[ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="[-pretty,-genes,-para,-sum,-cdna,-trans,-ace,]\n..cont  [-gff,-gener,-alb,-pal,-block,-divide]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genewisedb_V0_1_0().translate("wdl", allow_empty_container=True)

