from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Csianalysis_V0_1_0 = CommandToolBuilder(tool="CsiAnalysis", base_command=["CsiAnalysis"], inputs=[ToolInput(tag="in_default_g", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(default 4g)")), ToolInput(tag="in_final_command_line", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="final command line before executing")), ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_value_dot", input_type=String(), position=0, doc=InputDocumentation(doc="GQ_THRESHOLD=Integer          The minimum genotype quality for a variant.  If VCF file has no genotype quality, this")), ToolInput(tag="in_chromosomes_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Default value: [X, Y, MT]. This option can be set to 'null' to clear the"))], outputs=[], container="quay.io/biocontainers/dropseq_tools:2.4.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csianalysis_V0_1_0().translate("wdl")

