from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Medaka_Tools_Get_Alignment_Params_V0_1_0 = CommandToolBuilder(tool="medaka_tools_get_alignment_params", base_command=["medaka", "tools", "get_alignment_params"], inputs=[ToolInput(tag="in_model", input_type=Int(optional=True), prefix="--model", doc=InputDocumentation(doc="Model to use. {r103_min_high_g345, r103_min_high_g360,\nr103_prom_high_g360, r103_prom_snp_g3210,\nr103_prom_variant_g3210, r10_min_high_g303,\nr10_min_high_g340, r941_min_fast_g303, r941_min_high_g303,\nr941_min_high_g330, r941_min_high_g340_rle,\nr941_min_high_g344, r941_min_high_g351, r941_min_high_g360,\nr941_prom_fast_g303, r941_prom_high_g303,\nr941_prom_high_g330, r941_prom_high_g344,\nr941_prom_high_g360, r941_prom_high_g4011,\nr941_prom_snp_g303, r941_prom_snp_g322, r941_prom_snp_g360,\nr941_prom_variant_g303, r941_prom_variant_g322,\nr941_prom_variant_g360} (default: r941_min_high_g360)\n"))], outputs=[], container="quay.io/biocontainers/medaka:1.2.5--py38h64b100c_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medaka_Tools_Get_Alignment_Params_V0_1_0().translate("wdl")

