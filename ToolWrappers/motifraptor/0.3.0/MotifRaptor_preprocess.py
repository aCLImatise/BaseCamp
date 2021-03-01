from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Float

Motifraptor_Preprocess_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_preprocess", base_command=["MotifRaptor", "preprocess"], inputs=[ToolInput(tag="in_g_was_summary", input_type=File(optional=True), prefix="--gwas_summary", doc=InputDocumentation(doc="GWAS summary statistic file")), ToolInput(tag="in_column_numbers", input_type=Int(optional=True), prefix="--column_numbers", doc=InputDocumentation(doc="provide six column numbers for information in such\norder: ID,CHR,POS,A1,A2,SCORE eg. 1,2,3,4,5,6")), ToolInput(tag="in_score_type", input_type=File(optional=True), prefix="--score_type", doc=InputDocumentation(doc="Score type in GWAS summary statistic file: pvalue or\nzscore or chisquare")), ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="threads for pvalue - default 5E-8\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Preprocess_V0_1_0().translate("wdl", allow_empty_container=True)

