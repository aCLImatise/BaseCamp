from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Hmm_View_V0_1_0 = CommandToolBuilder(tool="hmm_view", base_command=["hmm_view"], inputs=[ToolInput(tag="in_assume_separate_version", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="Assume a separate version of each state for each of\n<nrcats> rate categories.")), ToolInput(tag="in_assume_use_indel", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Assume use of indel model for specified category names.")), ToolInput(tag="in_required_i_tree", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="(Required with -i) Tree topology to assume for indel\nmodel (.nh file).")), ToolInput(tag="in_show_only_states", input_type=String(optional=True), prefix="-C", doc=InputDocumentation(doc="Show only the states corresponding to the specified\ncategory names.")), ToolInput(tag="in_reflect_hmm_yet", input_type=String(optional=True), prefix="-R", doc=InputDocumentation(doc="Reflect the HMM about the specified 'pivot' categories.\n(Not yet implemented.)")), ToolInput(tag="in_show_unconnected_states", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Don't show unconnected states.")), ToolInput(tag="in_hmm_fname", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cat_map_fname", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmm_View_V0_1_0().translate("wdl", allow_empty_container=True)

