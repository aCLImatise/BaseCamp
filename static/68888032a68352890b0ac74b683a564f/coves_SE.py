from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float

Coves_Se_V0_1_0 = CommandToolBuilder(tool="coves_SE", base_command=["coves-SE"], inputs=[ToolInput(tag="in_show_pairs_just", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": show all pairs, not just Watson-Crick")), ToolInput(tag="in_set_expected_default", input_type=Float(optional=True), prefix="-g", doc=InputDocumentation(doc=": set expected background GC composition (default 0.5)")), ToolInput(tag="in_mountain_representation_structural", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": mountain representation of structural alignment")), ToolInput(tag="in_secondary_structure_string", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": secondary structure string representation of\nstructural alignment\n"))], outputs=[], container="quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coves_Se_V0_1_0().translate("wdl")

