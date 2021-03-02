from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Falconc_M4Filt_Idx_V0_1_0 = CommandToolBuilder(tool="falconc_m4filt_idx", base_command=["falconc", "m4filt-idx"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_infn_string_required", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --in-fn=  string  REQUIRED  Path to .m4 file. Index filename will have\n'.idx' appended.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_M4Filt_Idx_V0_1_0().translate("wdl", allow_empty_container=True)

