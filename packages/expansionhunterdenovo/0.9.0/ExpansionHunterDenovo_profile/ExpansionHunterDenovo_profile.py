from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Expansionhunterdenovo_Profile_V0_1_0 = CommandToolBuilder(tool="ExpansionHunterDenovo_profile", base_command=["ExpansionHunterDenovo", "profile"], inputs=[ToolInput(tag="in_reads", input_type=File(optional=True), prefix="--reads", doc=InputDocumentation(doc="BAM or CRAM file with aligned reads")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="FASTA file with reference assembly")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="Prefix for the output files")), ToolInput(tag="in_min_unit_len", input_type=Int(optional=True), prefix="--min-unit-len", doc=InputDocumentation(doc="(=2)     Shortest repeat unit to consider")), ToolInput(tag="in_max_unit_len", input_type=Int(optional=True), prefix="--max-unit-len", doc=InputDocumentation(doc="(=20)    Longest repeat unit to consider")), ToolInput(tag="in_min_anchor_mapq", input_type=Int(optional=True), prefix="--min-anchor-mapq", doc=InputDocumentation(doc="(=50) Minimum MAPQ of an anchor read")), ToolInput(tag="in_max_irr_mapq", input_type=Int(optional=True), prefix="--max-irr-mapq", doc=InputDocumentation(doc="(=40)    Maximum MAPQ of an in-repeat read")), ToolInput(tag="in_log_reads", input_type=Boolean(optional=True), prefix="--log-reads", doc=InputDocumentation(doc="Log informative reads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Expansionhunterdenovo_Profile_V0_1_0().translate("wdl", allow_empty_container=True)

