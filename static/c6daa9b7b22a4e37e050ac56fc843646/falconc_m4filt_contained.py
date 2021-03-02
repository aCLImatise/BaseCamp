from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Falconc_M4Filt_Contained_V0_1_0 = CommandToolBuilder(tool="falconc_m4filt_contained", base_command=["falconc", "m4filt-contained"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__infn_string", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --in-fn=   string  REQUIRED  Input m4 overlap file")), ToolInput(tag="in__outfn_string", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --out-fn=  string  REQUIRED  Output m4 overlap file")), ToolInput(tag="in__nproc_int", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="=, --n-proc=  int     24        Number of processes to run locally (ignored\nfor now)")), ToolInput(tag="in_min_len", input_type=Boolean(optional=True), prefix="--min-len", doc=InputDocumentation(doc="=      int     400       Minimum read length; reads shorter than\nminLen will be discarded")), ToolInput(tag="in_min_idt_pct", input_type=Boolean(optional=True), prefix="--min-idt-pct", doc=InputDocumentation(doc="=  float   96.0      Minimum overlap identity; worse overlaps\nwill be discarded\n")), ToolInput(tag="in_m_four_filt_contained", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out__outfn_string", output_type=File(optional=True), selector=InputSelector(input_to_select="in__outfn_string", type_hint=File()), doc=OutputDocumentation(doc="=, --out-fn=  string  REQUIRED  Output m4 overlap file"))], container="quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_M4Filt_Contained_V0_1_0().translate("wdl")

