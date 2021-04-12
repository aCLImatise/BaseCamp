from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Megalodon_Extras_Phase_Variants_Extract_Haplotype_Reads_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_phase_variants_extract_haplotype_reads", base_command=["megalodon_extras", "phase_variants", "extract_haplotype_reads"], inputs=[ToolInput(tag="in_alignment_filename", input_type=String(), position=0, doc=InputDocumentation(doc="Alignment filename.")), ToolInput(tag="in_out_basename", input_type=String(), position=1, doc=InputDocumentation(doc="Basename for read ids output."))], outputs=[], container="quay.io/biocontainers/megalodon:2.3.0--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Phase_Variants_Extract_Haplotype_Reads_V0_1_0().translate("wdl")

