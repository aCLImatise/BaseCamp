from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Collapsetagwithcontext_V0_1_0 = CommandToolBuilder(tool="CollapseTagWithContext", base_command=["CollapseTagWithContext"], inputs=[ToolInput(tag="in_default_g", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(default 4g)")), ToolInput(tag="in_final_command_line", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="final command line before executing")), ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_outtagstring_output_tag", input_type=String(), position=0, doc=InputDocumentation(doc="OUT_TAG=String                The output tag for the newly collapsed tag values  Required. ")), ToolInput(tag="in_counts_dot", input_type=String(), position=0, doc=InputDocumentation(doc="For example, if your context tags were cell and gene and you were collapsing UMI")), ToolInput(tag="in_mutationalcollapseboolean_instead_using", input_type=String(), position=0, doc=InputDocumentation(doc="MUTATIONAL_COLLAPSE=Boolean   Instead of using the default fixed edit distance, use a mutational collapse strategy.  For")), ToolInput(tag="in_edit_distance_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Default value: false. This option can be set to 'null' to clear the"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collapsetagwithcontext_V0_1_0().translate("wdl", allow_empty_container=True)

