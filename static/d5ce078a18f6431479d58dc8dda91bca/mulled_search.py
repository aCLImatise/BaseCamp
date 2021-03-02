from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean

Mulled_Search_V0_1_0 = CommandToolBuilder(tool="mulled_search", base_command=["mulled-search"], inputs=[ToolInput(tag="in_destination", input_type=Array(t=String(), optional=True), prefix="--destination", doc=InputDocumentation(doc="Choose where to search. Options are 'conda', 'quay',\n'singularity' and 'github'. If no option are given,\nall will be searched.")), ToolInput(tag="in_organization", input_type=String(optional=True), prefix="--organization", doc=InputDocumentation(doc="Change quay organization to search; default is\nbiocontainers.")), ToolInput(tag="in_channel", input_type=String(optional=True), prefix="--channel", doc=InputDocumentation(doc="Change conda channel to search; default is bioconda.")), ToolInput(tag="in_non_strict", input_type=Boolean(optional=True), prefix="--non-strict", doc=InputDocumentation(doc="Autocorrection of typos activated. Lists more results\nbut can be confusing. For too many queries quay.io\nblocks the request and the results can be incomplete.")), ToolInput(tag="in_json", input_type=Boolean(optional=True), prefix="--json", doc=InputDocumentation(doc="Returns results as JSON.")), ToolInput(tag="in_search", input_type=Array(t=String(), optional=True), prefix="--search", doc=InputDocumentation(doc="The name of the tool(s) to search for.\n"))], outputs=[], container="quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mulled_Search_V0_1_0().translate("wdl")

