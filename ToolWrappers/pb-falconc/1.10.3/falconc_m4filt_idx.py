from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Falconc_M4Filt_Idx_V0_1_0 = CommandToolBuilder(tool="falconc_m4filt_idx", base_command=["falconc", "m4filt-idx"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_infn_string_required", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --in-fn=  string  REQUIRED  Path to .m4 file. Index filename will have\n'.idx' appended.\n")), ToolInput(tag="in_m_four_filt_idx", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_M4Filt_Idx_V0_1_0().translate("wdl")

