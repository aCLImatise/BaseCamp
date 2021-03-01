from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Megalodon_Extras_Variants_Heterozygous_Factor_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_variants_heterozygous_factor", base_command=["megalodon_extras", "variants", "heterozygous_factor"], inputs=[ToolInput(tag="in_calls_dot", input_type=String(), position=1, doc=InputDocumentation(doc="megalodon_variants    VCF file containing diploid variant calls from")), ToolInput(tag="in_megalodon_dot", input_type=String(), position=2, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Variants_Heterozygous_Factor_V0_1_0().translate("wdl")

