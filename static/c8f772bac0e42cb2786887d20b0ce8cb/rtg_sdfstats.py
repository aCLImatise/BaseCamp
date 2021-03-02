from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Rtg_Sdfstats_V0_1_0 = CommandToolBuilder(tool="rtg_sdfstats", base_command=["rtg", "sdfstats"], inputs=[ToolInput(tag="in_lengths", input_type=Boolean(optional=True), prefix="--lengths", doc=InputDocumentation(doc="print out the name and length of each sequence. (Not\nrecommended for read sets)")), ToolInput(tag="in_position", input_type=String(optional=True), prefix="--position", doc=InputDocumentation(doc="display info about unknown bases (Ns) by read position")), ToolInput(tag="in_quality", input_type=Boolean(optional=True), prefix="--quality", doc=InputDocumentation(doc="display mean of quality")), ToolInput(tag="in_sex", input_type=Int(optional=True), prefix="--sex", doc=InputDocumentation(doc="display reference sequence list for the given sex, if defined.\nAllowed values are [male, female, either]. May be specified 0\nor more times, or as a comma separated list")), ToolInput(tag="in_taxonomy", input_type=String(optional=True), prefix="--taxonomy", doc=InputDocumentation(doc="information about taxonomy")), ToolInput(tag="in_unknowns", input_type=String(optional=True), prefix="--unknowns", doc=InputDocumentation(doc="info about unknown bases (Ns)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Sdfstats_V0_1_0().translate("wdl", allow_empty_container=True)

