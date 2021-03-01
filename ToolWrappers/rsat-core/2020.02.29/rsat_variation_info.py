from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Rsat_Variation_Info_V0_1_0 = CommandToolBuilder(tool="rsat_variation_info", base_command=["rsat", "variation-info"], inputs=[ToolInput(tag="in_type", input_type=String(optional=True), prefix="-type", doc=InputDocumentation(doc=",deletion")), ToolInput(tag="in_variation_info", input_type=String(), position=0, doc=InputDocumentation(doc="[1mVERSION[0m")), ToolInput(tag="in_util", input_type=String(), position=0, doc=InputDocumentation(doc="[1mUSAGE[0m")), ToolInput(tag="in_ignored_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The definition of the BED format is provided on the UCSC Genome Browser")), ToolInput(tag="in_matrices_dot", input_type=String(), position=0, doc=InputDocumentation(doc="[1mWISH LIST[0m")), ToolInput(tag="in_get", input_type=String(), position=0, doc=InputDocumentation(doc="variations specified either by their IDs or by a set of genomic")), ToolInput(tag="in_regions_dot", input_type=String(), position=1, doc=InputDocumentation(doc="Supported formats:")), ToolInput(tag="in_mdeletionm", input_type=Int(), position=0, doc=InputDocumentation(doc="[33mdeletion[0m")), ToolInput(tag="in_deletion", input_type=String(), position=1, doc=InputDocumentation(doc="http://www.sequenceontology.org/browser/release_2.5/term/SO:0000159")), ToolInput(tag="in_insertion", input_type=String(), position=0, doc=InputDocumentation(doc="http://www.sequenceontology.org/browser/release_2.5/term/SO:0000667"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Variation_Info_V0_1_0().translate("wdl", allow_empty_container=True)

