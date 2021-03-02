from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Falconc_Ovl_Cov_Stats_V0_1_0 = CommandToolBuilder(tool="falconc_ovl_cov_stats", base_command=["falconc", "ovl-cov-stats"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_infn_string_required", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --in-fn=  string  REQUIRED  An overlap file in M4 format, or a FOFN of M4\nfiles.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Ovl_Cov_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

