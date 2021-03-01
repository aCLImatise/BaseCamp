from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Gathermolecularbarcodedistributionbygene_V0_1_0 = CommandToolBuilder(tool="GatherMolecularBarcodeDistributionByGene", base_command=["GatherMolecularBarcodeDistributionByGene"], inputs=[ToolInput(tag="in_default_g", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(default 4g)")), ToolInput(tag="in_final_command_line", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="final command line before executing")), ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools."))], outputs=[], container="quay.io/biocontainers/dropseq_tools:2.4.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gathermolecularbarcodedistributionbygene_V0_1_0().translate("wdl")

