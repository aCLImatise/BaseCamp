from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Falconc_M4Filt_Stage2_V0_1_0 = CommandToolBuilder(tool="falconc_m4filt_stage2", base_command=["falconc", "m4filt-stage2"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__minidt_float", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="=, --minIdt=          float   90.0      set minIdt")), ToolInput(tag="in__bestn_bestn", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="=, --bestN=           int     10        set bestN")), ToolInput(tag="in_min_overhang", input_type=Boolean(optional=True), prefix="--minOverhang", doc=InputDocumentation(doc="=          int     0         set minOverhang")), ToolInput(tag="in_blacklist_in", input_type=Boolean(optional=True), prefix="--blacklistIn", doc=InputDocumentation(doc="=          string  REQUIRED  set blacklistIn")), ToolInput(tag="in__filteredoutput_string", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="=, --filteredOutput=  string  REQUIRED  set filteredOutput"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_M4Filt_Stage2_V0_1_0().translate("wdl", allow_empty_container=True)

