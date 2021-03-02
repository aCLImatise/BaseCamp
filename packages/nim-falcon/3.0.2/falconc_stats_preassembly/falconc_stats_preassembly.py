from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Stats_Preassembly_V0_1_0 = CommandToolBuilder(tool="falconc_stats_preassembly", base_command=["falconc", "stats-preassembly"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__rawreadsrdbfn_string", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="=, --rawreads-rdb-fn=  string  REQUIRED  Path to the raw reads RaptorDB.")), ToolInput(tag="in_preadsrdbfn_string_required", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="=, --preads-rdb-fn=    string  REQUIRED  Path to the preads (error-corrected\nreads) RaptorDB.")), ToolInput(tag="in__genomelength_int", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="=, --genome-length=    int32   REQUIRED  Length of the genome.")), ToolInput(tag="in__cutofflength_int", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="=, --cutoff-length=    int32   REQUIRED  Length cutoff used for assembly.")), ToolInput(tag="in_stats_pre_assembly", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Stats_Preassembly_V0_1_0().translate("wdl")

