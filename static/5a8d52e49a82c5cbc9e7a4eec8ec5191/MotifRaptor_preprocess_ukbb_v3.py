from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float

Motifraptor_Preprocess_Ukbb_V3_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_preprocess_ukbb_v3", base_command=["MotifRaptor", "preprocess_ukbb_v3"], inputs=[ToolInput(tag="in_g_was_summary", input_type=File(optional=True), prefix="--gwas_summary", doc=InputDocumentation(doc="GWAS summary statistic - UKBB v3 tsv filename")), ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="threads for pvalue - default 5E-8\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Preprocess_Ukbb_V3_V0_1_0().translate("wdl", allow_empty_container=True)

