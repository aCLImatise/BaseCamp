from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Svtk_Sr_Test_V0_1_0 = CommandToolBuilder(tool="svtk_sr_test", base_command=["svtk", "sr-test"], inputs=[ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Window around variant start/end to consider for split\nread support. [100]")), ToolInput(tag="in_background", input_type=Int(optional=True), prefix="--background", doc=InputDocumentation(doc="Number of background samples to choose for comparison\nin t-test. [160]")), ToolInput(tag="in_samples", input_type=String(optional=True), prefix="--samples", doc=InputDocumentation(doc="Whitelist of samples to restrict testing to.")), ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Tabix index of discordant pair file. Required if\ndiscordant pair file is hosted remotely.")), ToolInput(tag="in_median_file", input_type=File(optional=True), prefix="--medianfile", doc=InputDocumentation(doc="Median coverage statistics for each library\n(optional). If provided, each sample's split counts\nwill be normalized accordingly. Same format as RdTest,\none column per sample.")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="--log", doc=InputDocumentation(doc="Print progress log to stderr.")), ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="VCF of variant calls. Standardized to include CHR2,\nEND, SVTYPE, STRANDS in INFO.")), ToolInput(tag="in_count_file", input_type=String(), position=1, doc=InputDocumentation(doc="Tabix indexed file of split counts. Columns:\nchrom,pos,clip,count,sample")), ToolInput(tag="in_f_out", input_type=String(), position=2, doc=InputDocumentation(doc="Output table of most significant start/endpositions."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtk_Sr_Test_V0_1_0().translate("wdl", allow_empty_container=True)

