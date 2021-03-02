from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Svtk_Pe_Test_V0_1_0 = CommandToolBuilder(tool="svtk_pe_test", base_command=["svtk", "pe-test"], inputs=[ToolInput(tag="in_window_out", input_type=Int(optional=True), prefix="--window-out", doc=InputDocumentation(doc="Window outside breakpoint to query for discordant\npairs. [500]")), ToolInput(tag="in_window_in", input_type=Int(optional=True), prefix="--window-in", doc=InputDocumentation(doc="Window inside breakpoint to query for discordant\npairs. [50]")), ToolInput(tag="in_background", input_type=Int(optional=True), prefix="--background", doc=InputDocumentation(doc="Number of background samples to sample for PE\nevidence. [160]")), ToolInput(tag="in_samples", input_type=String(optional=True), prefix="--samples", doc=InputDocumentation(doc="Whitelist of samples to restrict testing to.")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Tabix index of discordant pair file. Required if\ndiscordant pair file is hosted remotely.")), ToolInput(tag="in_median_file", input_type=File(optional=True), prefix="--medianfile", doc=InputDocumentation(doc="Median coverage statistics for each library\n(optional). If provided, each sample's split counts\nwill be normalized accordingly. Same format as RdTest,\none column per sample.")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="--log", doc=InputDocumentation(doc="Print progress log to stderr.")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="Variants.")), ToolInput(tag="in_disc", input_type=String(), position=1, doc=InputDocumentation(doc="Table of discordant pair coordinates.")), ToolInput(tag="in_f_out", input_type=String(), position=2, doc=InputDocumentation(doc="Output table of PE counts."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Pe_Test_V0_1_0().translate("wdl", allow_empty_container=True)

