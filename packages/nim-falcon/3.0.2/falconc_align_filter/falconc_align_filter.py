from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Align_Filter_V0_1_0 = CommandToolBuilder(tool="falconc_align_filter", base_command=["falconc", "align-filter"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__bamsfofn_string", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="=, --bams-fofn=             string  REQUIRED  set bams_fofn")), ToolInput(tag="in__allsubreadnamesfn_string", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="=, --all-subread-names-fn=  string  ''        set all_subread_names_fn")), ToolInput(tag="in__minlen_int", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="=, --min-len=               int     -1        set min_len")), ToolInput(tag="in_min_frac", input_type=Boolean(optional=True), prefix="--min-frac", doc=InputDocumentation(doc="=                   float   0.7       set min_frac")), ToolInput(tag="in_align_filter", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Align_Filter_V0_1_0().translate("wdl")

