from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Falcodiff_V0_1_0 = CommandToolBuilder(tool="falcodiff", base_command=["falcodiff"], inputs=[ToolInput(tag="in_outdir", input_type=Boolean(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Create all output files in the specified\noutput directory. If notprovided, files\nwill be created in the same directory as\nthe input file.")), ToolInput(tag="in_skip_text", input_type=Boolean(optional=True), prefix="--skip-text", doc=InputDocumentation(doc="Skip generating text file (Default = false)")), ToolInput(tag="in_skip_html", input_type=Boolean(optional=True), prefix="--skip-html", doc=InputDocumentation(doc="Skip generating HTML file (Default = false)")), ToolInput(tag="in_skip_short_summary", input_type=Boolean(optional=True), prefix="--skip-short-summary", doc=InputDocumentation(doc="Skip short summary(Default = false)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print more run info")), ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="-about", doc=InputDocumentation(doc="print about message")), ToolInput(tag="in_fast_qc_data_one_dot_txt", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_qc_data_two_dot_txt", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falcodiff_V0_1_0().translate("wdl", allow_empty_container=True)

