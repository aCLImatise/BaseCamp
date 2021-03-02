from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Falconc_M4Filt_Merge_Blacklist_V0_1_0 = CommandToolBuilder(tool="falconc_m4filt_merge_blacklist", base_command=["falconc", "m4filt-merge-blacklist"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_blistfofn_string_required", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="=, --blistFofn=  string  REQUIRED  set blistFofn")), ToolInput(tag="in__outfn_string", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --outFn=      string  REQUIRED  set outFn"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_M4Filt_Merge_Blacklist_V0_1_0().translate("wdl", allow_empty_container=True)

