from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Falconc_Stats_Assembly_V0_1_0 = CommandToolBuilder(tool="falconc_stats_assembly", base_command=["falconc", "stats-assembly"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in_fastafn_string_required", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\n.fai)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Stats_Assembly_V0_1_0().translate("wdl", allow_empty_container=True)

