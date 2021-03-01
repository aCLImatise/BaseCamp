from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Compare_Gff3_To_Chado_V0_1_0 = CommandToolBuilder(tool="compare_gff3_to_chado", base_command=["compare_gff3_to_chado"], inputs=[], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Gff3_To_Chado_V0_1_0().translate("wdl")

