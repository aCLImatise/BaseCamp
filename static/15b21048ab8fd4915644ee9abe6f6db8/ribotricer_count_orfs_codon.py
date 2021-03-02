from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Ribotricer_Count_Orfs_Codon_V0_1_0 = CommandToolBuilder(tool="ribotricer_count_orfs_codon", base_command=["ribotricer", "count-orfs-codon"], inputs=[ToolInput(tag="in_ribot_ricer_index", input_type=File(optional=True), prefix="--ribotricer_index", doc=InputDocumentation(doc="Path to the index file of ribotricer This\nfile should be generated using ribotricer\nprepare-orfs  [required]")), ToolInput(tag="in_detected_orfs", input_type=File(optional=True), prefix="--detected_orfs", doc=InputDocumentation(doc="Path to the detected orfs file This file\nshould be generated using ribotricer detect-\norfs  [required]")), ToolInput(tag="in_features", input_type=String(optional=True), prefix="--features", doc=InputDocumentation(doc="ORF types separated with comma  [required]")), ToolInput(tag="in_ribot_ricer_index_fast_a", input_type=File(optional=True), prefix="--ribotricer_index_fasta", doc=InputDocumentation(doc="Path to ORF seq file  [required]")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix for output files  [required]")), ToolInput(tag="in_report_all", input_type=Boolean(optional=True), prefix="--report_all", doc=InputDocumentation(doc="Whether output all ORFs including those non-\ntranslating ones"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribotricer_Count_Orfs_Codon_V0_1_0().translate("wdl", allow_empty_container=True)

