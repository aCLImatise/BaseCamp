from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ariba_Refquery_Prepareref_Directory_V0_1_0 = CommandToolBuilder(tool="ariba_refquery_prepareref directory", base_command=["ariba", "refquery", "prepareref directory"], inputs=[ToolInput(tag="in_prepare_ref_dir", input_type=String(), position=0, doc=InputDocumentation(doc="Name of directory output by prepareref")), ToolInput(tag="in_search_name", input_type=String(), position=0, doc=InputDocumentation(doc="Name of cluster or sequence to search for"))], outputs=[], container="quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ariba_Refquery_Prepareref_Directory_V0_1_0().translate("wdl")

